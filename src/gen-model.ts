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
  type SplitModels,
} from './voxel-model.ts';
import { exec } from 'child_process';

const openSCADPath = '/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD';

// Default config values
const defaultConfig: ProjectConfig = {
  voxelSize: 10,
  wallThickness: 2,
  ringWidth: 3,
  ringHeight: 10,
  ringTolerance: 0.025,
};

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
  const projectData = await loadProjectFromPath(projectName, projectPath);
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
  voxelSize: z.number().default(10),
  wallThickness: z.number().optional(),
  ringWidth: z.number().optional(),
  ringHeight: z.number().optional(),
  ringTolerance: z.number().optional(),
  splitLayer: z.number().optional(),
});

export type ProjectConfig = z.infer<typeof ProjectConfig>;

interface ProjectData {
  name: string;
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
    `Edit ${join(projectPath, projectName + '.txt')} to add your voxel data.`
  );
}

async function loadProjectFromPath(
  projectName: string,
  projectPath: string
): Promise<ProjectData> {
  // Find the project config file
  const files = await import('fs').then(fs => fs.promises.readdir(projectPath));
  const configFile = files.find(f => f.endsWith('.json'));

  if (!configFile) {
    throw new Error(`No .json config file found in ${projectPath}`);
  }

  const configPath = join(projectPath, configFile);
  const configData = JSON.parse(await readFile(configPath, 'utf8'));
  const config = ProjectConfig.parse({ ...defaultConfig, ...configData });

  // Load voxel data
  const voxelPath = join(projectPath, projectName + '.txt');
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

  console.log(`Loaded ${voxels.length} voxels from ${projectName}.txt`);
  console.log(
    `Bounds: X[${bounds.minX}..${bounds.maxX}] Y[${bounds.minY}..${bounds.maxY}] Z[${bounds.minZ}..${bounds.maxZ}]`
  );
  console.log(`Split layer: ${model.splitLayer}`);

  return { name: projectName, config, voxelData, model, splitModels };
}

async function generateOpenSCADFiles(
  projectData: ProjectData,
  projectPath: string
): Promise<void> {
  const { name, config, model, splitModels } = projectData;

  console.log('Generating OpenSCAD files...');

  const width = config.voxelSize * (model.bounds.maxX - model.bounds.minX);

  // check if there is a file called additions.scad in the project path
  const additionsPath = join(projectPath, 'additions.scad');
  const additionsExists = existsSync(additionsPath);
  if (additionsExists) {
    console.log(`Additions file found at ${additionsPath}`);
  }

  // Generate common module code
  let generatedCode = `
// Generated at ${new Date().toISOString()}
// by gen-model.ts

${additionsExists ? `include <additions.scad>` : ''}

scene = "preview";

if (scene == "front") {
  frontPart();
} else if (scene == "back") {
  backPart();
} else if (scene == "ring") {
  ringPart();
} else if (scene == "all") {
  translate([-${width}, 0, 0]) frontPart();
  translate([${width}, 0, 0]) backPart();
  ringPart();
} else if (scene == "preview") {
  frontPart();
  translate([-${config.voxelSize}, 0, 0])
  rotate([0, 180, 0]) backPart();
}
  `;

  // Generate front file (right side up)
  const frontVoxelCount = splitModels.frontModel.getAllVoxels().length;
  console.log(`Front part: ${frontVoxelCount} voxels`);
  if (additionsExists) {
    generatedCode += `
module frontPart() {
  difference() {
    union() {
      ${genModelCode(splitModels.frontModel, config)}
      frontAdditions();
    }
    frontCutouts();
  }
  ${additionsExists ? `frontAdditions();` : ''}
}
  `;
  } else {
    generatedCode += `
module frontPart() {
  ${genModelCode(splitModels.frontModel, config)}
}
  `;
  }

  // Generate back file (already transformed/flipped)
  const backVoxelCount = splitModels.backModel.getAllVoxels().length;
  console.log(`Back part: ${backVoxelCount} voxels`);
  if (additionsExists) {
    generatedCode += `
module backPart() {
  difference() {
    union() {
      ${genModelCode(splitModels.backModel, config)}
      backAdditions();
    }
    backCutouts();
  }
}
  `;
  } else {
    generatedCode += `
module backPart() {
  ${genModelCode(splitModels.backModel, config)}
}
  `;
  }

  // Generate ring file
  generatedCode += `
module ringPart() {
  ${genRingCode(splitModels.backModel, config)}
}
  `;

  generatedCode += genCommonCode(config);

  await writeFile(join(projectPath, name + '.scad'), generatedCode);
  console.log(`Generated ${name}.scad`);

  // Generate STL files
  console.log('Generating STL files...');
  try {
    await Promise.all([
      generateSTLFile(projectData, projectPath, 'front'),
      generateSTLFile(projectData, projectPath, 'back'),
      generateSTLFile(projectData, projectPath, 'ring'),
    ]);
    console.log('All STL files generated successfully');
  } catch (error) {
    console.error('Failed to generate one or more STL files');
    throw error; // Re-throw to propagate the error to the main function
  }
}

async function generateSTLFile(
  projectData: ProjectData,
  projectPath: string,
  scene: string
): Promise<void> {
  const { name } = projectData;
  const stlFile = join(projectPath, name + '-' + scene + '.stl');
  const scadFile = join(projectPath, name + '.scad');

  let startTime = performance.now();
  console.log(`Generating ${name}-${scene}.stl...`);

  try {
    await new Promise<void>((resolve, reject) => {
      exec(
        `"${openSCADPath}" -o "${stlFile}" "${scadFile}" -D 'scene="${scene}"'`,
        { cwd: projectPath },
        (error, _stdout, stderr) => {
          if (error) {
            reject(new Error(`OpenSCAD failed: ${stderr || error.message}`));
          } else {
            resolve();
          }
        }
      );
    });
    const durationMs = performance.now() - startTime;
    console.log(`Generated ${name}-${scene}.stl (${durationMs.toFixed(2)}ms)`);
  } catch (error) {
    console.error(`Failed to generate ${name}-${scene}.stl:`);
    console.error(error instanceof Error ? error.message : String(error));
    throw error; // Re-throw to handle the failure in the Promise.all above
  }
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

module ringLine() {
    // Generate positive ring piece that fits into groove
    translate([-ringWidth/2, -ringWidth/2])
    square([voxelSize/2 + ringWidth/2 + 1, ringWidth]);
}

module voxel(walls, grooves=[0,0,0,0]) {
    v2 = voxelSize/2;

    // Groves
    render() if (grooves[0] || grooves[1] || grooves[2] || grooves[3]) {
        height = voxelSize;
        
        difference() {
            translate([0, 0, voxelSize/2 - height + wallThickness/2])
               linear_extrude(height)
                square([voxelSize, voxelSize], center=true);
        
            
            translate([0,0,1]) 
                linear_extrude(ringHeight/2+1) {
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
    render() hull() {        
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
            linear_extrude(height) offset(-ringTolerance) union() {
                // right (+x)
                if (grooves[0]) rotate(180) ringLine();
                if (grooves[1]) rotate(90) ringLine();
                if (grooves[2]) rotate(0) ringLine();
                if (grooves[3]) rotate(270) ringLine();
            }
    }
}
`;
}

function genModelCode(model: VoxelModel, config: ProjectConfig): string {
  let content = `
// Main model
`;

  const voxels = model.getAllVoxels();

  const height =
    config.voxelSize * (2.5 + model.bounds.maxZ - model.bounds.minZ) +
    config.wallThickness / 2;

  content += `translate([0,0, ${height}])`;
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

function genRingCode(model: VoxelModel, config: ProjectConfig): string {
  const perimeterVoxels = model.getPerimeterVoxels();

  const height =
    config.voxelSize * (2.5 + model.bounds.maxZ - model.bounds.minZ) -
    config.ringHeight / 2;

  return `
// Rings for connecting front and back parts
translate([0,0, ${-height}])
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
