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
  type VoxelModel,
  type ModelVoxel,
} from './voxel-model.ts';

// Main entry point
if (import.meta.url === `file://${encodeURI(process.argv[1])}`) {
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
    ringTolerance: 0.3,
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

  console.log(`Loaded ${voxels.length} voxels from ${config.voxelFile}`);
  console.log(
    `Bounds: X[${bounds.minX}..${bounds.maxX}] Y[${bounds.minY}..${bounds.maxY}] Z[${bounds.minZ}..${bounds.maxZ}]`
  );
  console.log(`Split layer: ${model.splitLayer}`);

  return { config, voxelData, model };
}

async function generateOpenSCADFiles(
  projectData: ProjectData,
  projectPath: string
): Promise<void> {
  const { config, model } = projectData;
  const baseName = config.scadFile.replace(/\.scad$/, '');

  // Generate the three output files
  const frontFile = `${baseName}-front.scad`;
  const backFile = `${baseName}-back.scad`;
  const ringFile = `${baseName}-ring.scad`;

  console.log('Generating OpenSCAD files...');

  // Generate common module code
  const moduleCode = generateVoxelModules(config);

  // Generate front file (right side up)
  const frontVoxels = model.getFrontVoxels();
  const frontContent = generateSCADFile(
    frontVoxels,
    config,
    moduleCode,
    'front'
  );
  await writeFile(join(projectPath, frontFile), frontContent);
  console.log(`Generated ${frontFile} (${frontVoxels.length} voxels)`);

  // Generate back file (rotated 180 degrees around X axis)
  const backVoxels = model.getBackVoxels();
  const backContent = generateSCADFile(backVoxels, config, moduleCode, 'back');
  await writeFile(join(projectPath, backFile), backContent);
  console.log(`Generated ${backFile} (${backVoxels.length} voxels)`);

  // Generate ring file
  const ringContent = generateRingFile(config, model);
  await writeFile(join(projectPath, ringFile), ringContent);
  console.log(`Generated ${ringFile}`);
}

function generateVoxelModules(config: ProjectConfig): string {
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

module voxel(walls=[1,1,1,1,1,1], solid=false, ring=false) {
    if (solid) {
        // Solid voxel with optional ring groove
        solidVoxel(ring);
    } else {
        // Regular wall voxel
        voxelWalls(walls);
    }
}

module voxelWalls(walls) {
    v2 = voxelSize/2;
    
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

module ringCell() {
    // Generate the ring that fits in the groove
    rotate_extrude()
        translate([voxelSize/2 - ringWidth/2, 0])
        square([ringWidth, ringHeight], center=true);
}
`;
}

function generateSCADFile(
  voxels: ModelVoxel[],
  config: ProjectConfig,
  moduleCode: string,
  type: 'front' | 'back'
): string {
  const timestamp = new Date().toISOString();

  let content = `// Generated OpenSCAD file for ${type} part
// Generated at ${timestamp}
// by gen-model.ts

${moduleCode}

// Main model
`;

  if (type === 'front') {
    content += `
// Rotate 180 degrees around X axis for printing flat
rotate([180, 0, 0]) {
`;
  }

  content += 'union() {\n';

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

    if (voxel.isPerimeter) {
      content += `    v(${x}, ${y}, ${z}) voxel(walls=[${wallsArray.join(',')}], solid=true, ring=${voxel.needsRing ? 'true' : 'false'});\n`;
    } else {
      content += `    v(${x}, ${y}, ${z}) voxel(walls=[${wallsArray.join(',')}]);\n`;
    }
  });

  content += '}\n';

  if (type === 'front') {
    content += '}\n';
  }

  return content;
}

function generateRingFile(config: ProjectConfig, model: VoxelModel): string {
  const timestamp = new Date().toISOString();
  const perimeterVoxels = model.getPerimeterVoxels();
  const moduleCode = generateVoxelModules(config);

  return `// Generated ring file
// Generated at ${timestamp}
// by gen-model.ts

${moduleCode}

// Rings for connecting front and back parts
union() {
${perimeterVoxels
  .map(voxel => {
    const [x, y, z] = voxel.pos;
    return `    v(${x}, ${y}, ${z}) ringCell();`;
  })
  .join('\n')}
}
`;
}
