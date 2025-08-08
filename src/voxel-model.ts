//
// Voxel model generation with wall calculations and groove support
//

import { type VoxelData, type Voxel, type BoundingBox } from './voxel-data.ts';

export interface VoxelWalls {
  floor: boolean; // -z
  right: boolean; // +x
  up: boolean; // +y
  left: boolean; // -x
  down: boolean; // -y
  ceiling: boolean; // +z
}

export interface VoxelGrooves {
  right?: boolean; // +x
  up?: boolean; // +y
  left?: boolean; // -x
  down?: boolean; // -y
}

export interface ModelVoxel {
  pos: [number, number, number];
  walls: VoxelWalls;
  grooves: VoxelGrooves;
  isPerimeter: boolean;
  voxel: Voxel;
}

export interface VoxelModel {
  readonly data: VoxelData;
  readonly bounds: BoundingBox;
  readonly splitLayer: number;
  voxelAt(x: number, y: number, z: number): ModelVoxel | null;
  getAllVoxels(): ModelVoxel[];
  getPerimeterVoxels(): ModelVoxel[];
}

export interface SplitModels {
  frontModel: VoxelModel;
  backModel: VoxelModel;
}

export function createVoxelModel(
  voxelData: VoxelData,
  bounds: BoundingBox,
  splitLayer?: number
): VoxelModel {
  const actualSplitLayer =
    splitLayer ?? Math.floor((bounds.maxZ - bounds.minZ) / 2) + bounds.minZ;

  function isVoxelAt(x: number, y: number, z: number): boolean {
    const arrX = x - bounds.minX;
    const arrY = y - bounds.minY;
    const arrZ = z - bounds.minZ;

    if (arrX < 0 || arrY < 0 || arrZ < 0) return false;
    if (arrZ >= voxelData.length) return false;
    if (arrY >= voxelData[arrZ]!.length) return false;
    if (arrX >= voxelData[arrZ]![arrY]!.length) return false;

    return voxelData[arrZ]![arrY]![arrX] !== null;
  }

  function calculateWalls(x: number, y: number, z: number): VoxelWalls {
    return {
      floor: !isVoxelAt(x, y, z - 1), // -z
      right: !isVoxelAt(x + 1, y, z), // +x
      up: !isVoxelAt(x, y + 1, z), // +y
      left: !isVoxelAt(x - 1, y, z), // -x
      down: !isVoxelAt(x, y - 1, z), // -y
      ceiling: !isVoxelAt(x, y, z + 1) && z < bounds.maxZ - 1, // +z
    };
  }

  function calculateGrooves(x: number, y: number, z: number): VoxelGrooves {
    if (z !== bounds.maxZ) return {};

    const up = isVoxelAt(x, y - 1, z);
    const down = isVoxelAt(x, y + 1, z);
    const left = isVoxelAt(x - 1, y, z);
    const right = isVoxelAt(x + 1, y, z);

    const upLeft = isVoxelAt(x - 1, y - 1, z);
    const upRight = isVoxelAt(x + 1, y - 1, z);
    const downLeft = isVoxelAt(x - 1, y + 1, z);
    const downRight = isVoxelAt(x + 1, y + 1, z);

    return {
      left:
        (right && (!up || !down)) ||
        (right && up && !upRight) ||
        (right && down && !downRight),
      right:
        (left && (!up || !down)) ||
        (left && up && !upLeft) ||
        (left && down && !downLeft),
      up:
        (down && (!left || !right)) ||
        (down && left && !downLeft) ||
        (down && right && !downRight),
      down:
        (up && (!left || !right)) ||
        (up && right && !upRight) ||
        (up && left && !upLeft),
    };
  }

  function voxelAt(x: number, y: number, z: number): ModelVoxel | null {
    const arrX = x - bounds.minX;
    const arrY = y - bounds.minY;
    const arrZ = z - bounds.minZ;

    if (arrX < 0 || arrY < 0 || arrZ < 0) return null;
    if (arrZ >= voxelData.length) return null;
    if (arrY >= voxelData[arrZ]!.length) return null;
    if (arrX >= voxelData[arrZ]![arrY]!.length) return null;

    const voxel = voxelData[arrZ]![arrY]![arrX];
    if (!voxel) return null;

    const grooves = calculateGrooves(x, y, z);

    return {
      pos: [x, y, z],
      walls: calculateWalls(x, y, z),
      grooves,
      isPerimeter:
        grooves.right || grooves.up || grooves.left || grooves.down || false,
      voxel,
    };
  }

  function getAllVoxels(): ModelVoxel[] {
    const result: ModelVoxel[] = [];

    for (let z = bounds.minZ; z <= bounds.maxZ; z++) {
      for (let y = bounds.minY; y <= bounds.maxY; y++) {
        for (let x = bounds.minX; x <= bounds.maxX; x++) {
          const modelVoxel = voxelAt(x, y, z);
          if (modelVoxel) {
            result.push(modelVoxel);
          }
        }
      }
    }

    return result;
  }

  function getPerimeterVoxels(): ModelVoxel[] {
    return getAllVoxels().filter(v => v.isPerimeter);
  }

  return {
    data: voxelData,
    bounds,
    splitLayer: actualSplitLayer,
    voxelAt,
    getAllVoxels,
    getPerimeterVoxels,
  };
}

export function createSplitModels(
  voxelData: VoxelData,
  bounds: BoundingBox,
  splitLayer?: number
): SplitModels {
  const actualSplitLayer =
    splitLayer ?? Math.floor((bounds.maxZ - bounds.minZ) / 2) + bounds.minZ;

  console.log(
    `Split layer: ${actualSplitLayer}, bounds: Z[${bounds.minZ}..${bounds.maxZ}]`
  );

  // Create front voxel data (voxels at or below split layer)
  const frontVoxelData: VoxelData = [];
  const frontBounds = { ...bounds };
  frontBounds.maxZ = actualSplitLayer;

  for (let z = 0; z < voxelData.length; z++) {
    const realZ = z + bounds.minZ;
    if (realZ <= actualSplitLayer && voxelData[z]) {
      frontVoxelData[z] = voxelData[z]!;
    }
  }

  // Create back voxel data (voxels above split layer)
  // Transform: flip z and x axes (rotation around y-axis by 180 degrees)
  const backVoxelData: VoxelData = [];

  // Calculate dimensions for back model
  const zBackStart = actualSplitLayer + 1;
  const zBackSize = bounds.maxZ - zBackStart + 1;

  if (zBackSize <= 0) {
    console.log('No back voxels - split layer is at or above max Z');
    return {
      frontModel: createVoxelModel(
        frontVoxelData,
        frontBounds,
        actualSplitLayer
      ),
      backModel: createVoxelModel([], {
        minX: 0,
        maxX: 0,
        minY: 0,
        maxY: 0,
        minZ: 0,
        maxZ: 0,
      }),
    };
  }

  console.log(
    `Back Z range: ${zBackStart} to ${bounds.maxZ}, size: ${zBackSize}`
  );

  // The back bounds should remain the same size, just different positioning
  const backBounds = {
    minX: bounds.minX,
    maxX: bounds.maxX,
    minY: bounds.minY,
    maxY: bounds.maxY,
    minZ: bounds.minZ,
    maxZ: bounds.minZ + zBackSize - 1,
  };

  // Calculate dimensions
  const xSize = bounds.maxX - bounds.minX + 1;
  const ySize = bounds.maxY - bounds.minY + 1;

  // Initialize back voxel data array
  for (let z = 0; z < zBackSize; z++) {
    backVoxelData[z] = [];
    for (let y = 0; y < ySize; y++) {
      backVoxelData[z]![y] = [];
      for (let x = 0; x < xSize; x++) {
        backVoxelData[z]![y]![x] = null;
      }
    }
  }

  let backVoxelCount = 0;

  // Copy and transform back voxels
  for (let z = zBackStart; z <= bounds.maxZ; z++) {
    const origZIndex = z - bounds.minZ;
    if (origZIndex < voxelData.length && voxelData[origZIndex]) {
      for (let y = bounds.minY; y <= bounds.maxY; y++) {
        const origYIndex = y - bounds.minY;
        if (
          origYIndex < voxelData[origZIndex]!.length &&
          voxelData[origZIndex]![origYIndex]
        ) {
          for (let x = bounds.minX; x <= bounds.maxX; x++) {
            const origXIndex = x - bounds.minX;
            const voxel = voxelData[origZIndex]![origYIndex]![origXIndex];
            if (voxel) {
              // Transform coordinates: flip z and x
              // For Z: map the back layers to start from 0
              // The highest Z in the back section should become Z=0 in the new model
              const newZIndex = bounds.maxZ - z; // This will give us values from 0 to zBackSize-1

              // For X: flip the axis by mapping array indices
              // Original array index: x - bounds.minX (ranges from 0 to xSize-1)
              // Flipped array index: (xSize-1) - (x - bounds.minX)
              const newXIndex = xSize - 1 - origXIndex;
              const newYIndex = y - bounds.minY; // Y unchanged

              if (
                newZIndex >= 0 &&
                newZIndex < backVoxelData.length &&
                newYIndex >= 0 &&
                newYIndex < backVoxelData[newZIndex]!.length &&
                newXIndex >= 0 &&
                newXIndex < backVoxelData[newZIndex]![newYIndex]!.length
              ) {
                backVoxelData[newZIndex]![newYIndex]![newXIndex] = voxel;
                backVoxelCount++;
              }
            }
          }
        }
      }
    }
  }

  console.log(`Created back model with ${backVoxelCount} voxels`);

  const frontModel = createVoxelModel(
    frontVoxelData,
    frontBounds,
    actualSplitLayer
  );
  const backModel = createVoxelModel(backVoxelData, backBounds);

  return {
    frontModel,
    backModel,
  };
}
