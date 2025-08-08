#!/usr/bin/env node --experimental-strip-types

import { readFileSync, writeFileSync } from 'fs';
import { basename, extname, dirname, join } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const isMainModule = process.argv[1] === __filename;

//
// Generates an OpenSCAD file that contains the voxel data for a given Goxel file.
//

// Main execution
function main() {
  const args = process.argv.slice(2);

  if (args.length === 0 || args.includes('--help') || args.includes('-h')) {
    console.log(
      'Usage: goxel-txt-to-scad.ts [options] <input.txt> [output.scad]'
    );
    console.log('');
    console.log('Converts Goxel txt format to OpenSCAD 3D array');
    console.log('');
    console.log('Options:');
    console.log(
      "  --no-flip-y    Don't flip the Y axis (default: flip for intuitive viewing)"
    );
    console.log('  -h, --help     Show this help message');
    console.log('');
    console.log(
      'If no output file is specified, uses input filename + "-voxels.scad"'
    );
    process.exit(args.includes('--help') || args.includes('-h') ? 0 : 1);
  }

  // Parse options
  const options = {
    flipY: !args.includes('--no-flip-y'),
  };

  // Filter out options to get file arguments
  const fileArgs = args.filter(
    arg => !arg.startsWith('--') && !arg.startsWith('-')
  );

  if (fileArgs.length === 0) {
    console.error('Error: No input file specified');
    process.exit(1);
  }

  const inputPath = fileArgs[0];
  const outputPath = fileArgs[1];

  convertGoxelToOpenSCAD(inputPath, outputPath, options);
}

if (isMainModule) {
  main();
}

// Core conversion logic
function convertGoxelToOpenSCAD(
  inputPath: string,
  outputPath?: string,
  options: ConversionOptions = { flipY: true }
): void {
  try {
    console.log(`Reading Goxel file: ${inputPath}`);
    const voxels = parseGoxelFile(inputPath);
    console.log(`Found ${voxels.length} voxels`);

    const bounds = calculateBoundingBox(voxels);
    console.log(
      `Bounding box: X[${bounds.minX}..${bounds.maxX}] Y[${bounds.minY}..${bounds.maxY}] Z[${bounds.minZ}..${bounds.maxZ}]`
    );

    const array = createVoxelArray(voxels, bounds, options);
    const variableName = generateVariableName(inputPath);
    const output = formatArrayAsOpenSCAD(
      array,
      variableName,
      basename(inputPath),
      options
    );

    const finalOutputPath = outputPath || generateOutputFileName(inputPath);
    writeFileSync(finalOutputPath, output);

    console.log(`OpenSCAD array written to: ${finalOutputPath}`);
    console.log(`Variable name: ${variableName}`);
    console.log(`Y-axis flipped: ${options.flipY ? 'yes' : 'no'}`);
  } catch (error) {
    console.error('Error:', error instanceof Error ? error.message : error);
    process.exit(1);
  }
}

function createVoxelArray(
  voxels: Voxel[],
  bounds: BoundingBox,
  options: ConversionOptions
): number[][][] {
  const width = bounds.maxX - bounds.minX + 1;
  const height = bounds.maxY - bounds.minY + 1;
  const depth = bounds.maxZ - bounds.minZ + 1;

  // Initialize 3D array with zeros
  const array: number[][][] = Array(depth)
    .fill(null)
    .map(() =>
      Array(height)
        .fill(null)
        .map(() => Array(width).fill(0))
    );

  // Fill in the voxels
  voxels.forEach(voxel => {
    const x = voxel.x - bounds.minX;
    let y = voxel.y - bounds.minY;
    const z = voxel.z - bounds.minZ;

    // Flip Y axis if requested (default behavior for intuitive viewing)
    if (options.flipY) {
      y = height - 1 - y;
    }

    array[z][y][x] = 1;
  });

  return array;
}

function formatArrayAsOpenSCAD(
  array: number[][][],
  variableName: string,
  inputFileName: string,
  options: ConversionOptions
): string {
  const timestamp = new Date().toISOString();
  const width = array[0]?.[0]?.length || 0;
  const height = array[0]?.length || 0;
  const depth = array.length;

  let output = `// Generated from ${inputFileName} at ${timestamp}\n`;
  output += `// by goxel-txt-to-scad.ts\n`;
  output += `// Array dimensions: [z][y][x] = [${depth}][${height}][${width}]\n`;
  output += `// Y-axis flipped: ${options.flipY ? 'yes' : 'no'}\n\n`;

  // Generate size variable name from input filename
  const baseName = inputFileName.replace(/\.[^/.]+$/, ''); // Remove extension
  const sizeVariableName =
    baseName.replace(/[^a-zA-Z0-9]/g, '_').replace(/^([0-9])/, '_$1') + 'Size';

  output += `${sizeVariableName} = [${width}, ${height}, ${depth}]; // [width, height, depth]\n\n`;

  output += `${variableName} = [\n`;

  array.forEach((layer, z) => {
    output += `    [ // ${z}\n`;
    layer.forEach(row => {
      output += `        [${row.join(',')}]`;
      if (row !== layer[layer.length - 1]) {
        output += ',';
      }
      output += '\n';
    });
    output += '    ]';
    if (z !== array.length - 1) {
      output += ',';
    }
    output += '\n\n';
  });

  output += '];\n';

  return output;
}

// Utility functions
function parseGoxelFile(filePath: string): Voxel[] {
  const content = readFileSync(filePath, 'utf-8');
  const lines = content
    .split('\n')
    .filter(line => line.trim() && !line.startsWith('#'));

  return lines.map(line => {
    const parts = line.trim().split(/\s+/);
    if (parts.length !== 4) {
      throw new Error(`Invalid line format: ${line}`);
    }

    return {
      x: parseInt(parts[0], 10),
      y: parseInt(parts[1], 10),
      z: parseInt(parts[2], 10),
      color: parts[3],
    };
  });
}

function calculateBoundingBox(voxels: Voxel[]): BoundingBox {
  if (voxels.length === 0) {
    return { minX: 0, maxX: 0, minY: 0, maxY: 0, minZ: 0, maxZ: 0 };
  }

  const bounds = voxels.reduce(
    (acc, voxel) => ({
      minX: Math.min(acc.minX, voxel.x),
      maxX: Math.max(acc.maxX, voxel.x),
      minY: Math.min(acc.minY, voxel.y),
      maxY: Math.max(acc.maxY, voxel.y),
      minZ: Math.min(acc.minZ, voxel.z),
      maxZ: Math.max(acc.maxZ, voxel.z),
    }),
    {
      minX: voxels[0].x,
      maxX: voxels[0].x,
      minY: voxels[0].y,
      maxY: voxels[0].y,
      minZ: voxels[0].z,
      maxZ: voxels[0].z,
    }
  );

  return bounds;
}

function generateOutputFileName(inputPath: string): string {
  const dir = dirname(inputPath);
  const baseName = basename(inputPath, extname(inputPath));
  return join(dir, `${baseName}-voxels.scad`);
}

function generateVariableName(inputPath: string): string {
  const baseName = basename(inputPath, extname(inputPath));
  // Convert to camelCase and ensure it's a valid identifier
  return (
    baseName.replace(/[^a-zA-Z0-9]/g, '_').replace(/^([0-9])/, '_$1') + 'Voxels'
  );
}

// Types
interface Voxel {
  x: number;
  y: number;
  z: number;
  color: string;
}

interface BoundingBox {
  minX: number;
  maxX: number;
  minY: number;
  maxY: number;
  minZ: number;
  maxZ: number;
}

interface ConversionOptions {
  flipY: boolean;
}
