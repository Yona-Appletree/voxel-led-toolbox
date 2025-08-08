//
// Voxel data parsing and representation
//

export interface Voxel {
  x: number;
  y: number;
  z: number;
  color: string;
}

export interface BoundingBox {
  minX: number;
  maxX: number;
  minY: number;
  maxY: number;
  minZ: number;
  maxZ: number;
}

// VoxelData is a 3D array: data[z][y][x] = voxel | null
export type VoxelData = (Voxel | null)[][][];

/**
 * Parse the voxel data text format (from Goxel .txt export)
 * Format: X Y Z RRGGBB (one line per voxel)
 */
export function parseVoxelData(data: string): {
  voxels: Voxel[];
  bounds: BoundingBox;
} {
  const lines = data
    .split('\n')
    .filter(line => line.trim() && !line.startsWith('#'));

  const voxels: Voxel[] = lines.map(line => {
    const parts = line.trim().split(/\s+/);
    if (parts.length !== 4) {
      throw new Error(`Invalid voxel line format: ${line}`);
    }

    return {
      x: parseInt(parts[0], 10),
      y: parseInt(parts[1], 10),
      z: parseInt(parts[2], 10),
      color: parts[3],
    };
  });

  const bounds = calculateBoundingBox(voxels);
  return { voxels, bounds };
}

/**
 * Convert voxel list to 3D array representation
 */
export function voxelsToArray(voxels: Voxel[], bounds: BoundingBox): VoxelData {
  const width = bounds.maxX - bounds.minX + 1;
  const height = bounds.maxY - bounds.minY + 1;
  const depth = bounds.maxZ - bounds.minZ + 1;

  // Initialize 3D array with nulls
  const array: VoxelData = Array(depth)
    .fill(null)
    .map(() =>
      Array(height)
        .fill(null)
        .map(() => Array(width).fill(null))
    );

  // Fill in the voxels
  voxels.forEach(voxel => {
    const x = voxel.x - bounds.minX;
    const y = voxel.y - bounds.minY;
    const z = voxel.z - bounds.minZ;
    array[z][y][x] = voxel;
  });

  return array;
}

function calculateBoundingBox(voxels: Voxel[]): BoundingBox {
  if (voxels.length === 0) {
    return { minX: 0, maxX: 0, minY: 0, maxY: 0, minZ: 0, maxZ: 0 };
  }

  return voxels.reduce(
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
}
