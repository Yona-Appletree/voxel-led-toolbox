//
// Script that generates an OpenSCAD model from a voxel data file.
//

import { existsSync } from 'fs';
import { readFile } from 'fs/promises';
import z from 'zod';

// This is done by calling a voxel()

async function main(args: string[]) {
  function usage(): never {
    console.log('Usage: gen-model <project-name>');
    process.exit(1);
  }

  const projectName = args[0] ?? usage();
  const projectPath = path.join(process.cwd(), 'projects', projectName);
}

async function loadProjectFromPath(path: string): Promise<{
  config: ProjectConfig;
  voxelData: VoxelData;
}> {
  const projectJson = JSON.parse(await readFile(path, 'utf8'));
  return ProjectConfig.parse(projectJson);
}

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

function panic(message: string): never {
  throw new Error(message);
}

const voxelUtilCode = `

module v(x, y, z) {
    translate([x, y, z] * voxelSize) children();
}

module voxel(walls=[1,1,1,1,1,1]) {
    v2 = voxelSize/2;
    
    // 0: floor (-z)
    if (walls[0]) color([0,0,1]) translate([0, 0, -v2]) rotate([0, 180]) voxelWall();
    
    // 1: right (+x)
    if (walls[1]) color([0,1,0]) translate([v2, 0, 0]) rotate([0, 90]) voxelWall();
    
    // 2: up (+y)
    if (walls[2]) color([0,1,1]) translate([0, v2, 0]) rotate([-90, 0]) voxelWall();
    
    // 3: left (-x)
    if (walls[3]) color([1,0,0]) translate([-v2, 0, 0]) rotate([0, -90]) voxelWall();
    
    // 4: down (-y)
    if (walls[4]) color([1,0,1]) translate([0, -v2, 0]) rotate([90, 0]) voxelWall();
    
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
`;
