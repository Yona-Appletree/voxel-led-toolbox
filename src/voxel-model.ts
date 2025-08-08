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
  needsRing: boolean;
  voxel: Voxel;
}

export interface VoxelModel {
  readonly data: VoxelData;
  readonly bounds: BoundingBox;
  readonly splitLayer: number;
  voxelAt(x: number, y: number, z: number): ModelVoxel | null;
  getAllVoxels(): ModelVoxel[];
  getFrontVoxels(): ModelVoxel[];
  getBackVoxels(): ModelVoxel[];
  getPerimeterVoxels(): ModelVoxel[];
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

  function isPerimeterVoxel(x: number, y: number, z: number): boolean {
    // Check if voxel is on the outer perimeter at the base level
    if (z !== bounds.maxZ - 2) return false;

    // Check if it's on the edge of the occupied space
    return (
      !isVoxelAt(x + 1, y, z) ||
      !isVoxelAt(x - 1, y, z) ||
      !isVoxelAt(x, y + 1, z) ||
      !isVoxelAt(x, y - 1, z) ||
      !isVoxelAt(x + 1, y + 1, z) ||
      !isVoxelAt(x - 1, y + 1, z) ||
      !isVoxelAt(x + 1, y - 1, z) ||
      !isVoxelAt(x - 1, y - 1, z)
    );
  }

  function needsRingGroove(x: number, y: number, z: number): boolean {
    // Ring grooves are needed for perimeter voxels at the split layer
    return isPerimeterVoxel(x, y, z) && z === actualSplitLayer;
  }

  function calculateWalls(x: number, y: number, z: number): VoxelWalls {
    return {
      floor: !isVoxelAt(x, y, z - 1), // -z
      right: !isVoxelAt(x + 1, y, z), // +x
      up: !isVoxelAt(x, y + 1, z), // +y
      left: !isVoxelAt(x - 1, y, z), // -x
      down: !isVoxelAt(x, y - 1, z), // -y
      ceiling: !isVoxelAt(x, y, z + 1), // +z
    };
  }

  function calculateGrooves(x: number, y: number, z: number): VoxelGrooves {
    if (z !== bounds.maxZ - 2) return {};

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
        (down && right && !downRight)
      ,
       down:
         (up && (!left || !right)) ||
         (up && right && !upRight) ||
         (up && left && !upLeft)
        ,
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

    return {
      pos: [x, y, z],
      walls: calculateWalls(x, y, z),
      grooves: calculateGrooves(x, y, z),
      isPerimeter: isPerimeterVoxel(x, y, z),
      needsRing: needsRingGroove(x, y, z),
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

  function getFrontVoxels(): ModelVoxel[] {
    return getAllVoxels().filter(v => v.pos[2] <= actualSplitLayer);
  }

  function getBackVoxels(): ModelVoxel[] {
    return getAllVoxels().filter(v => v.pos[2] > actualSplitLayer);
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
    getFrontVoxels,
    getBackVoxels,
    getPerimeterVoxels,
  };
}
