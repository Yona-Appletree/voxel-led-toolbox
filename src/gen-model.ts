#!/usr/bin/env node --experimental-strip-types

//
// Script that generates OpenSCAD files from voxel data for 3D printing and LED lighting.
//

import { existsSync, mkdirSync } from 'fs';
import { readFile, writeFile } from 'fs/promises';
import { join } from 'path';
import { createInterface } from 'readline';
import z from 'zod';
import { parseVoxelData, voxelsToArray, type VoxelData } from './voxel-data.ts';
import {
  createVoxelModel,
  createSplitModels,
  type VoxelModel,
  type ModelVoxel,
  type SplitModels,
} from './voxel-model.ts';

// Main entry point
if (import.meta.url === `file://${encodeURI(process.argv[1] || '')}`) {
  main(process.argv.slice(2)).catch(error => {
    console.error('Error:', error);
    process.exit(1);
  });
}

async function main(args: string[]): Promise<void> {
  function usage(): never {
    console.log('Usage: gen-model <project-name> [--watch]');
    console.log('');
    console.log(
      'Generates OpenSCAD files from voxel data for 3D printing and LED lighting.'
    );
    console.log('');
    process.exit(1);
  }

  if (args.length === 0 || args.includes('--help') || args.includes('-h')) {
    usage();
  }

  const projectName = args[0];

  if (!projectName) {
    usage();
  }

  const projectPath = join(process.cwd(), 'projects', projectName);

  // Check if project exists, create if needed
  if (!existsSync(projectPath)) {
    const shouldCreate = await askUserToCreateProject(projectName);
    if (!shouldCreate) {
      console.log('Project creation cancelled.');
      process.exit(0);
    }
    await createNewProject(projectPath, projectName);

    console.log(`Project '${projectName}' created successfully!`);
    console.log(
      `Add your voxel data and re-run this script to build the models.`
    );

    return;
  }

  // Load and process project
  const projectData = await loadProjectFromPath(projectPath);
  await generateOpenSCADFiles(projectData, projectPath);
}

async function askUserToCreateProject(projectName: string): Promise<boolean> {
  const rl = createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  try {
    const answer = await new Promise<string>(resolve => {
      rl.question(
        `Project '${projectName}' does not exist. Create it? (Y/n): `,
        resolve
      );
    });

    return !answer.toLowerCase().startsWith('n');
  } finally {
    rl.close();
  }
}
// Project configuration schema
const ProjectConfig = z.object({
  scadFile: z.string(),
  voxelFile: z.string(),
  voxelSize: z.number().default(10),
  wallThickness: z.number().default(2),
  ringWidth: z.number().default(2),
  ringHeight: z.number().default(6),
  ringTolerance: z.number().default(0.3),
  splitLayer: z.number().optional(),
});

export type ProjectConfig = z.infer<typeof ProjectConfig>;

interface ProjectData {
  config: ProjectConfig;
  voxelData: VoxelData;
  model: VoxelModel;
  splitModels: SplitModels;
}

async function createNewProject(
  projectPath: string,
  projectName: string
): Promise<void> {
  console.log(`Creating new project at ${projectPath}...`);

  // Create project directory
  mkdirSync(projectPath, { recursive: true });

  // Create default project config
  const defaultConfig: ProjectConfig = {
    scadFile: `${projectName}.scad`,
    voxelFile: `${projectName}.txt`,
    voxelSize: 10,
    wallThickness: 2,
    ringWidth: 2,
    ringHeight: 6,
    ringTolerance: 0.2,
  };

  await writeFile(
    join(projectPath, `${projectName}.json`),
    JSON.stringify(defaultConfig, null, 2)
  );

  // Create empty voxel data file
  await writeFile(
    join(projectPath, `${projectName}.txt`),
    '# Goxel voxel data\n# Format: X Y Z RRGGBB\n# Add your voxel data here\n'
  );

  console.log(`Project '${projectName}' created successfully!`);
  console.log(
    `Edit ${join(projectPath, defaultConfig.voxelFile)} to add your voxel data.`
  );
}

async function loadProjectFromPath(projectPath: string): Promise<ProjectData> {
  // Find the project config file
  const files = await import('fs').then(fs => fs.promises.readdir(projectPath));
  const configFile = files.find(f => f.endsWith('.json'));

  if (!configFile) {
    throw new Error(`No .json config file found in ${projectPath}`);
  }

  const configPath = join(projectPath, configFile);
  const configData = JSON.parse(await readFile(configPath, 'utf8'));
  const config = ProjectConfig.parse(configData);

  // Load voxel data
  const voxelPath = join(projectPath, config.voxelFile);
  if (!existsSync(voxelPath)) {
    throw new Error(`Voxel file not found: ${voxelPath}`);
  }

  const voxelContent = await readFile(voxelPath, 'utf8');
  const { voxels, bounds } = parseVoxelData(voxelContent);

  if (voxels.length === 0) {
    throw new Error(`No voxel data found in ${voxelPath}`);
  }

  const voxelData = voxelsToArray(voxels, bounds);
  const model = createVoxelModel(voxelData, bounds, config.splitLayer);
  const splitModels = createSplitModels(voxelData, bounds, config.splitLayer);

  console.log(`Loaded ${voxels.length} voxels from ${config.voxelFile}`);
  console.log(
    `Bounds: X[${bounds.minX}..${bounds.maxX}] Y[${bounds.minY}..${bounds.maxY}] Z[${bounds.minZ}..${bounds.maxZ}]`
  );
  console.log(`Split layer: ${model.splitLayer}`);

  return { config, voxelData, model, splitModels };
}

async function generateOpenSCADFiles(
  projectData: ProjectData,
  projectPath: string
): Promise<void> {
  const { config, model, splitModels } = projectData;
  const baseName = config.scadFile.replace(/\.scad$/, '');

  // Generate the three output files
  const frontFile = `${baseName}-front.scad`;
  const backFile = `${baseName}-back.scad`;
  const ringFile = `${baseName}-ring.scad`;

  console.log('Generating OpenSCAD files...');

  // Generate common module code
  const commonCode = genCommonCode(config);

  // Generate front file (right side up)
  const frontVoxels = splitModels.frontModel.getAllVoxels();
  const frontContent = genModelCode(frontVoxels, config, commonCode);
  await writeFile(join(projectPath, frontFile), frontContent);
  console.log(`Generated ${frontFile} (${frontVoxels.length} voxels)`);

  // Generate back file (already transformed/flipped)
  console.log('Generating back file...');
  const backVoxels = splitModels.backModel.getAllVoxels();
  const backContent = genModelCode(backVoxels, config, commonCode);
  await writeFile(join(projectPath, backFile), backContent);
  console.log(`Generated ${backFile} (${backVoxels.length} voxels)`);

  // Generate ring file
  const ringContent = generateRingFile(config, splitModels.backModel);
  await writeFile(join(projectPath, ringFile), ringContent);
  console.log(`Generated ${ringFile}`);
}

function genCommonCode(config: ProjectConfig): string {
  return `
// Voxel utility modules
voxelSize = ${config.voxelSize};
wallThickness = ${config.wallThickness};
ringWidth = ${config.ringWidth};
ringHeight = ${config.ringHeight};
ringTolerance = ${config.ringTolerance};

module v(x, y, z) {
    translate([x, y, z] * voxelSize) children();
}

module groovePart() {
    translate([-ringWidth/2, -ringWidth/2])
    square([voxelSize/2 + ringWidth/2 + 1, ringWidth]);
}

module ringPart() {
    // Generate positive ring piece that fits into groove
    translate([-ringWidth/2, -ringWidth/2])
    square([voxelSize/2 + ringWidth/2, ringWidth]);
}

module voxel(walls, grooves=[0,0,0,0]) {
    v2 = voxelSize/2;

    // Groves
    if (grooves[0] || grooves[1] || grooves[2] || grooves[3]) {
    height = ringHeight/2 + wallThickness;
    translate([0, 0, voxelSize/2 - height + wallThickness/2])
        difference() {
            linear_extrude(height)
            square([voxelSize, voxelSize], center=true);
        
        offset(ringTolerance)
            translate([0,0,1 + wallThickness]) linear_extrude(ringHeight/2+1) {
            if (grooves[0]) rotate(180) groovePart();
            if (grooves[1]) rotate(90) groovePart();
            if (grooves[2]) rotate(0) groovePart();
            if (grooves[3]) rotate(270) groovePart();
        }
    }
}
    
    // 0: floor (-z)
    if (walls[0]) color([0,0,1]) translate([0, 0, -v2]) rotate([0, 180, 0]) voxelWall();
    
    // 1: right (+x)
    if (walls[1]) color([0,1,0]) translate([v2, 0, 0]) rotate([90, 0, 90]) voxelWall();
    
    // 2: up (+y)
    if (walls[2]) color([0,1,1]) translate([0, v2, 0]) rotate([-90, 0, 0]) voxelWall();
    
    // 3: left (-x)
    if (walls[3]) color([1,0,0]) translate([-v2, 0, 0]) rotate([90, 0, -90]) voxelWall();
    
    // 4: down (-y)
    if (walls[4]) color([1,0,1]) translate([0, -v2, 0]) rotate([90, 0, 0]) voxelWall();
    
    // 5: ceiling (+z)
    if (walls[5]) color([1,1,1]) translate([0, 0, v2]) voxelWall();
}

module voxelWall() {
    hull() {        
        cube([
            voxelSize+wallThickness,
            voxelSize+wallThickness,
            wallThickness
        ], center=true);
        
        translate([0,0,wallThickness])
            linear_extrude(wallThickness/4)
            square([
                voxelSize-1, 
                voxelSize-1,
            ], center=true);
    }
}

module solidVoxel(ring=false) {
    difference() {
        cube([voxelSize, voxelSize, voxelSize], center=true);
        
        if (ring) {
            // Cut ring groove around the perimeter
            ringGroove();
        }
    }
}

module ringGroove() {
    // Horizontal groove around the middle of the voxel
    translate([0, 0, 0])
        rotate_extrude()
        translate([voxelSize/2 - ringWidth/2, 0])
        square([ringWidth + ringTolerance, ringHeight + ringTolerance], center=true);
}

module ringCell(grooves=[0,0,0,0]) {
    // Generate positive ring pieces that fit into grooves
    if (grooves[0] || grooves[1] || grooves[2] || grooves[3]) {
        height = ringHeight;
        translate([0, 0, voxelSize/2 - height/2])
            linear_extrude(height) {
                // right (+x)
                if (grooves[0]) rotate(180) ringPart();
                if (grooves[1]) rotate(90) ringPart();
                if (grooves[2]) rotate(0) ringPart();
                if (grooves[3]) rotate(270) ringPart();
            }
    }
}
`;
}

function genModelCode(
  voxels: ModelVoxel[],
  config: ProjectConfig,
  moduleCode: string
): string {
  let content = `

${moduleCode}

// Main model
`;

  content += 'rotate([180,0,0]) union() {\n';

  voxels.forEach(voxel => {
    const [x, y, z] = voxel.pos;
    const walls = voxel.walls;
    const wallsArray = [
      walls.floor ? 1 : 0,
      walls.right ? 1 : 0,
      walls.up ? 1 : 0,
      walls.left ? 1 : 0,
      walls.down ? 1 : 0,
      walls.ceiling ? 1 : 0,
    ];

    const grooves = voxel.grooves;
    const groovesArray = [
      grooves.right ? 1 : 0,
      grooves.up ? 1 : 0,
      grooves.left ? 1 : 0,
      grooves.down ? 1 : 0,
    ];

    content += `    v(${x}, ${y}, ${z}) voxel(walls=[${wallsArray.join(',')}], grooves=[${groovesArray.join(',')}]);\n`;
  });

  content += '}\n';

  return content;
}

function generateRingFile(config: ProjectConfig, model: VoxelModel): string {
  const timestamp = new Date().toISOString();
  const perimeterVoxels = model.getPerimeterVoxels();
  const moduleCode = genCommonCode(config);

  return `// Generated ring file
// Generated at ${timestamp}
// by gen-model.ts

${moduleCode}

// Rings for connecting front and back parts
union() {
${perimeterVoxels
  .map(voxel => {
    const [x, y, z] = voxel.pos;
    const grooves = voxel.grooves;
    const groovesArray = [
      grooves.right ? 1 : 0,
      grooves.up ? 1 : 0,
      grooves.left ? 1 : 0,
      grooves.down ? 1 : 0,
    ];
    return `    v(${x}, ${y}, ${z}) ringCell(grooves=[${groovesArray.join(',')}]);`;
  })
  .join('\n')}
}
`;
}
