// Generated OpenSCAD file for front part
// Generated at 2025-08-08T20:37:05.507Z
// by gen-model.ts


// Voxel utility modules
voxelSize = 10;
wallThickness = 2;
ringWidth = 2;
ringHeight = 6;
ringTolerance = 0.3;

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


// Main model

// Rotate 180 degrees around X axis for printing flat
rotate([180, 0, 0]) {
union() {
    v(-1, -8, 2) voxel(walls=[1,0,0,1,1,0]);
    v(0, -8, 2) voxel(walls=[1,1,0,0,1,0]);
    v(-1, -7, 2) voxel(walls=[1,0,1,1,0,0]);
    v(0, -7, 2) voxel(walls=[1,1,1,0,0,0]);
    v(-1, -3, 2) voxel(walls=[1,0,0,1,1,0]);
    v(0, -3, 2) voxel(walls=[1,0,0,0,1,0]);
    v(1, -3, 2) voxel(walls=[1,1,0,0,1,0]);
    v(-1, -2, 2) voxel(walls=[1,0,1,1,0,0]);
    v(0, -2, 2) voxel(walls=[1,0,0,0,0,0]);
    v(1, -2, 2) voxel(walls=[1,0,0,0,0,0]);
    v(2, -2, 2) voxel(walls=[1,1,0,0,1,0]);
    v(0, -1, 2) voxel(walls=[1,0,1,1,0,0]);
    v(1, -1, 2) voxel(walls=[1,0,0,0,0,0]);
    v(2, -1, 2) voxel(walls=[1,0,0,0,0,0]);
    v(3, -1, 2) voxel(walls=[1,1,0,0,1,0]);
    v(1, 0, 2) voxel(walls=[1,0,1,1,0,0]);
    v(2, 0, 2) voxel(walls=[1,0,0,0,0,0]);
    v(3, 0, 2) voxel(walls=[1,0,0,0,0,0]);
    v(4, 0, 2) voxel(walls=[1,1,0,0,1,0]);
    v(2, 1, 2) voxel(walls=[1,0,1,1,0,0]);
    v(3, 1, 2) voxel(walls=[1,0,0,0,0,0]);
    v(4, 1, 2) voxel(walls=[1,0,0,0,0,0]);
    v(5, 1, 2) voxel(walls=[1,1,0,0,1,0]);
    v(-6, 2, 2) voxel(walls=[1,0,0,1,1,0]);
    v(-5, 2, 2) voxel(walls=[1,0,0,0,1,0]);
    v(-4, 2, 2) voxel(walls=[1,1,0,0,1,0]);
    v(3, 2, 2) voxel(walls=[1,0,0,1,0,0]);
    v(4, 2, 2) voxel(walls=[1,0,0,0,0,0]);
    v(5, 2, 2) voxel(walls=[1,1,0,0,0,0]);
    v(-6, 3, 2) voxel(walls=[1,0,0,1,0,0]);
    v(-5, 3, 2) voxel(walls=[1,0,0,0,0,0]);
    v(-4, 3, 2) voxel(walls=[1,1,0,0,0,0]);
    v(3, 3, 2) voxel(walls=[1,0,0,1,0,0]);
    v(4, 3, 2) voxel(walls=[1,0,0,0,0,0]);
    v(5, 3, 2) voxel(walls=[1,1,0,0,0,0]);
    v(-6, 4, 2) voxel(walls=[1,0,0,1,0,0]);
    v(-5, 4, 2) voxel(walls=[1,0,0,0,0,0]);
    v(-4, 4, 2) voxel(walls=[1,0,0,0,0,0]);
    v(-3, 4, 2) voxel(walls=[1,1,0,0,1,0]);
    v(2, 4, 2) voxel(walls=[1,0,0,1,1,0]);
    v(3, 4, 2) voxel(walls=[1,0,0,0,0,0]);
    v(4, 4, 2) voxel(walls=[1,0,0,0,0,0]);
    v(5, 4, 2) voxel(walls=[1,1,0,0,0,0]);
    v(-6, 5, 2) voxel(walls=[1,0,1,1,0,0]);
    v(-5, 5, 2) voxel(walls=[1,0,0,0,0,0]);
    v(-4, 5, 2) voxel(walls=[1,0,0,0,0,0]);
    v(-3, 5, 2) voxel(walls=[1,0,0,0,0,0]);
    v(-2, 5, 2) voxel(walls=[1,1,0,0,1,0]);
    v(1, 5, 2) voxel(walls=[1,0,0,1,1,0]);
    v(2, 5, 2) voxel(walls=[1,0,0,0,0,0]);
    v(3, 5, 2) voxel(walls=[1,0,0,0,0,0]);
    v(4, 5, 2) voxel(walls=[1,0,0,0,0,0]);
    v(5, 5, 2) voxel(walls=[1,1,1,0,0,0]);
    v(-5, 6, 2) voxel(walls=[1,0,1,1,0,0]);
    v(-4, 6, 2) voxel(walls=[1,0,0,0,0,0]);
    v(-3, 6, 2) voxel(walls=[1,0,0,0,0,0]);
    v(-2, 6, 2) voxel(walls=[1,0,0,0,0,0]);
    v(-1, 6, 2) voxel(walls=[1,0,0,0,1,0]);
    v(0, 6, 2) voxel(walls=[1,0,0,0,1,0]);
    v(1, 6, 2) voxel(walls=[1,0,0,0,0,0]);
    v(2, 6, 2) voxel(walls=[1,0,0,0,0,0]);
    v(3, 6, 2) voxel(walls=[1,0,0,0,0,0]);
    v(4, 6, 2) voxel(walls=[1,1,1,0,0,0]);
    v(-4, 7, 2) voxel(walls=[1,0,1,1,0,0]);
    v(-3, 7, 2) voxel(walls=[1,0,1,0,0,0]);
    v(-2, 7, 2) voxel(walls=[1,0,1,0,0,0]);
    v(-1, 7, 2) voxel(walls=[1,0,1,0,0,0]);
    v(0, 7, 2) voxel(walls=[1,0,1,0,0,0]);
    v(1, 7, 2) voxel(walls=[1,0,1,0,0,0]);
    v(2, 7, 2) voxel(walls=[1,0,1,0,0,0]);
    v(3, 7, 2) voxel(walls=[1,1,1,0,0,0]);
    v(-2, -9, 3) voxel(walls=[1,0,0,1,1,0]);
    v(-1, -9, 3) voxel(walls=[1,0,0,0,1,0]);
    v(0, -9, 3) voxel(walls=[1,0,0,0,1,0]);
    v(1, -9, 3) voxel(walls=[1,1,0,0,1,0]);
    v(-2, -8, 3) voxel(walls=[1,0,0,1,0,0]);
    v(-1, -8, 3) voxel(walls=[0,0,0,0,0,0]);
    v(0, -8, 3) voxel(walls=[0,0,0,0,0,0]);
    v(1, -8, 3) voxel(walls=[1,1,0,0,0,0]);
    v(-2, -7, 3) voxel(walls=[1,0,0,1,0,0]);
    v(-1, -7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(0, -7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(1, -7, 3) voxel(walls=[1,1,0,0,0,0]);
    v(-2, -6, 3) voxel(walls=[1,0,1,1,0,0]);
    v(-1, -6, 3) voxel(walls=[1,0,0,0,0,0]);
    v(0, -6, 3) voxel(walls=[1,0,0,0,0,0]);
    v(1, -6, 3) voxel(walls=[1,1,1,0,0,0]);
    v(-1, -5, 3) voxel(walls=[1,0,0,1,0,0]);
    v(0, -5, 3) voxel(walls=[1,1,0,0,0,0]);
    v(-2, -4, 3) voxel(walls=[1,0,0,1,1,0]);
    v(-1, -4, 3) voxel(walls=[1,0,0,0,0,0]);
    v(0, -4, 3) voxel(walls=[1,0,0,0,0,0]);
    v(1, -4, 3) voxel(walls=[1,1,0,0,1,0]);
    v(-2, -3, 3) voxel(walls=[1,0,0,1,0,0]);
    v(-1, -3, 3) voxel(walls=[0,0,0,0,0,0]);
    v(0, -3, 3) voxel(walls=[0,0,0,0,0,0]);
    v(1, -3, 3) voxel(walls=[0,0,0,0,0,0]);
    v(2, -3, 3) voxel(walls=[1,1,0,0,1,0]);
    v(-2, -2, 3) voxel(walls=[1,0,1,1,0,0]);
    v(-1, -2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(0, -2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(1, -2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(2, -2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(3, -2, 3) voxel(walls=[1,1,0,0,1,0]);
    v(-1, -1, 3) voxel(walls=[1,0,1,1,0,0]);
    v(0, -1, 3) voxel(walls=[0,0,0,0,0,0]);
    v(1, -1, 3) voxel(walls=[0,0,0,0,0,0]);
    v(2, -1, 3) voxel(walls=[0,0,0,0,0,0]);
    v(3, -1, 3) voxel(walls=[0,0,0,0,0,0]);
    v(4, -1, 3) voxel(walls=[1,1,0,0,1,0]);
    v(0, 0, 3) voxel(walls=[1,0,1,1,0,0]);
    v(1, 0, 3) voxel(walls=[0,0,0,0,0,0]);
    v(2, 0, 3) voxel(walls=[0,0,0,0,0,0]);
    v(3, 0, 3) voxel(walls=[0,0,0,0,0,0]);
    v(4, 0, 3) voxel(walls=[0,0,0,0,0,0]);
    v(5, 0, 3) voxel(walls=[1,1,0,0,1,0]);
    v(-6, 1, 3) voxel(walls=[1,0,0,1,1,0]);
    v(-5, 1, 3) voxel(walls=[1,0,0,0,1,0]);
    v(-4, 1, 3) voxel(walls=[1,1,0,0,1,0]);
    v(1, 1, 3) voxel(walls=[1,0,1,1,0,0]);
    v(2, 1, 3) voxel(walls=[0,0,0,0,0,0]);
    v(3, 1, 3) voxel(walls=[0,0,0,0,0,0]);
    v(4, 1, 3) voxel(walls=[0,0,0,0,0,0]);
    v(5, 1, 3) voxel(walls=[0,0,0,0,0,0]);
    v(6, 1, 3) voxel(walls=[1,1,0,0,1,0]);
    v(-7, 2, 3) voxel(walls=[1,0,0,1,1,0]);
    v(-6, 2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 2, 3) voxel(walls=[1,1,0,0,1,0]);
    v(2, 2, 3) voxel(walls=[1,0,0,1,0,0]);
    v(3, 2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(4, 2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(5, 2, 3) voxel(walls=[0,0,0,0,0,0]);
    v(6, 2, 3) voxel(walls=[1,1,0,0,0,0]);
    v(-7, 3, 3) voxel(walls=[1,0,0,1,0,0]);
    v(-6, 3, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 3, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 3, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 3, 3) voxel(walls=[1,1,0,0,0,0]);
    v(2, 3, 3) voxel(walls=[1,0,0,1,0,0]);
    v(3, 3, 3) voxel(walls=[0,0,0,0,0,0]);
    v(4, 3, 3) voxel(walls=[0,0,0,0,0,0]);
    v(5, 3, 3) voxel(walls=[0,0,0,0,0,0]);
    v(6, 3, 3) voxel(walls=[1,1,0,0,0,0]);
    v(-7, 4, 3) voxel(walls=[1,0,0,1,0,0]);
    v(-6, 4, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 4, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 4, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 4, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 4, 3) voxel(walls=[1,1,0,0,1,0]);
    v(1, 4, 3) voxel(walls=[1,0,0,1,1,0]);
    v(2, 4, 3) voxel(walls=[0,0,0,0,0,0]);
    v(3, 4, 3) voxel(walls=[0,0,0,0,0,0]);
    v(4, 4, 3) voxel(walls=[0,0,0,0,0,0]);
    v(5, 4, 3) voxel(walls=[0,0,0,0,0,0]);
    v(6, 4, 3) voxel(walls=[1,1,0,0,0,0]);
    v(-7, 5, 3) voxel(walls=[1,0,1,1,0,0]);
    v(-6, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-1, 5, 3) voxel(walls=[1,0,0,0,1,0]);
    v(0, 5, 3) voxel(walls=[1,0,0,0,1,0]);
    v(1, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(2, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(3, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(4, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(5, 5, 3) voxel(walls=[0,0,0,0,0,0]);
    v(6, 5, 3) voxel(walls=[1,1,1,0,0,0]);
    v(-6, 6, 3) voxel(walls=[1,0,1,1,0,0]);
    v(-5, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-1, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(0, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(1, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(2, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(3, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(4, 6, 3) voxel(walls=[0,0,0,0,0,0]);
    v(5, 6, 3) voxel(walls=[1,1,1,0,0,0]);
    v(-5, 7, 3) voxel(walls=[1,0,1,1,0,0]);
    v(-4, 7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(-1, 7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(0, 7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(1, 7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(2, 7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(3, 7, 3) voxel(walls=[0,0,0,0,0,0]);
    v(4, 7, 3) voxel(walls=[1,1,1,0,0,0]);
    v(-4, 8, 3) voxel(walls=[1,0,1,1,0,0]);
    v(-3, 8, 3) voxel(walls=[1,0,1,0,0,0]);
    v(-2, 8, 3) voxel(walls=[1,0,1,0,0,0]);
    v(-1, 8, 3) voxel(walls=[1,0,1,0,0,0]);
    v(0, 8, 3) voxel(walls=[1,0,1,0,0,0]);
    v(1, 8, 3) voxel(walls=[1,0,1,0,0,0]);
    v(2, 8, 3) voxel(walls=[1,0,1,0,0,0]);
    v(3, 8, 3) voxel(walls=[1,1,1,0,0,0]);
    v(-2, -9, 4) voxel(walls=[0,0,0,1,1,0]);
    v(-1, -9, 4) voxel(walls=[0,0,0,0,1,0]);
    v(0, -9, 4) voxel(walls=[0,0,0,0,1,0]);
    v(1, -9, 4) voxel(walls=[0,1,0,0,1,0]);
    v(-2, -8, 4) voxel(walls=[0,0,0,1,0,0]);
    v(-1, -8, 4) voxel(walls=[0,0,0,0,0,0]);
    v(0, -8, 4) voxel(walls=[0,0,0,0,0,0]);
    v(1, -8, 4) voxel(walls=[0,1,0,0,0,0]);
    v(-2, -7, 4) voxel(walls=[0,0,0,1,0,0]);
    v(-1, -7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(0, -7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(1, -7, 4) voxel(walls=[0,1,0,0,0,0]);
    v(-2, -6, 4) voxel(walls=[0,0,1,1,0,0]);
    v(-1, -6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(0, -6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(1, -6, 4) voxel(walls=[0,1,1,0,0,0]);
    v(-1, -5, 4) voxel(walls=[0,0,0,1,0,1]);
    v(0, -5, 4) voxel(walls=[0,1,0,0,0,1]);
    v(-2, -4, 4) voxel(walls=[0,0,0,1,1,0]);
    v(-1, -4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(0, -4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(1, -4, 4) voxel(walls=[0,1,0,0,1,0]);
    v(-2, -3, 4) voxel(walls=[0,0,0,1,0,0]);
    v(-1, -3, 4) voxel(walls=[0,0,0,0,0,0]);
    v(0, -3, 4) voxel(walls=[0,0,0,0,0,0]);
    v(1, -3, 4) voxel(walls=[0,0,0,0,0,0]);
    v(2, -3, 4) voxel(walls=[0,1,0,0,1,0]);
    v(-2, -2, 4) voxel(walls=[0,0,1,1,0,0]);
    v(-1, -2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(0, -2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(1, -2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(2, -2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(3, -2, 4) voxel(walls=[0,1,0,0,1,0]);
    v(-1, -1, 4) voxel(walls=[0,0,1,1,0,0]);
    v(0, -1, 4) voxel(walls=[0,0,0,0,0,0]);
    v(1, -1, 4) voxel(walls=[0,0,0,0,0,0]);
    v(2, -1, 4) voxel(walls=[0,0,0,0,0,0]);
    v(3, -1, 4) voxel(walls=[0,0,0,0,0,0]);
    v(4, -1, 4) voxel(walls=[0,1,0,0,1,0]);
    v(0, 0, 4) voxel(walls=[0,0,1,1,0,0]);
    v(1, 0, 4) voxel(walls=[0,0,0,0,0,0]);
    v(2, 0, 4) voxel(walls=[0,0,0,0,0,0]);
    v(3, 0, 4) voxel(walls=[0,0,0,0,0,0]);
    v(4, 0, 4) voxel(walls=[0,0,0,0,0,0]);
    v(5, 0, 4) voxel(walls=[0,1,0,0,1,0]);
    v(-6, 1, 4) voxel(walls=[0,0,0,1,1,0]);
    v(-5, 1, 4) voxel(walls=[0,0,0,0,1,0]);
    v(-4, 1, 4) voxel(walls=[0,1,0,0,1,0]);
    v(1, 1, 4) voxel(walls=[0,0,1,1,0,0]);
    v(2, 1, 4) voxel(walls=[0,0,0,0,0,0]);
    v(3, 1, 4) voxel(walls=[0,0,0,0,0,0]);
    v(4, 1, 4) voxel(walls=[0,0,0,0,0,0]);
    v(5, 1, 4) voxel(walls=[0,0,0,0,0,0]);
    v(6, 1, 4) voxel(walls=[0,1,0,0,1,0]);
    v(-7, 2, 4) voxel(walls=[0,0,0,1,1,0]);
    v(-6, 2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 2, 4) voxel(walls=[0,1,0,0,1,0]);
    v(2, 2, 4) voxel(walls=[0,0,0,1,0,0]);
    v(3, 2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(4, 2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(5, 2, 4) voxel(walls=[0,0,0,0,0,0]);
    v(6, 2, 4) voxel(walls=[0,1,0,0,0,0]);
    v(-7, 3, 4) voxel(walls=[0,0,0,1,0,0]);
    v(-6, 3, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 3, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 3, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 3, 4) voxel(walls=[0,1,0,0,0,0]);
    v(2, 3, 4) voxel(walls=[0,0,0,1,0,0]);
    v(3, 3, 4) voxel(walls=[0,0,0,0,0,0]);
    v(4, 3, 4) voxel(walls=[0,0,0,0,0,0]);
    v(5, 3, 4) voxel(walls=[0,0,0,0,0,0]);
    v(6, 3, 4) voxel(walls=[0,1,0,0,0,0]);
    v(-7, 4, 4) voxel(walls=[0,0,0,1,0,0]);
    v(-6, 4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 4, 4) voxel(walls=[0,1,0,0,1,0]);
    v(1, 4, 4) voxel(walls=[0,0,0,1,1,0]);
    v(2, 4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(3, 4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(4, 4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(5, 4, 4) voxel(walls=[0,0,0,0,0,0]);
    v(6, 4, 4) voxel(walls=[0,1,0,0,0,0]);
    v(-7, 5, 4) voxel(walls=[0,0,1,1,0,0]);
    v(-6, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-1, 5, 4) voxel(walls=[0,0,0,0,1,0]);
    v(0, 5, 4) voxel(walls=[0,0,0,0,1,0]);
    v(1, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(2, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(3, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(4, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(5, 5, 4) voxel(walls=[0,0,0,0,0,0]);
    v(6, 5, 4) voxel(walls=[0,1,1,0,0,0]);
    v(-6, 6, 4) voxel(walls=[0,0,1,1,0,0]);
    v(-5, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-1, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(0, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(1, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(2, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(3, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(4, 6, 4) voxel(walls=[0,0,0,0,0,0]);
    v(5, 6, 4) voxel(walls=[0,1,1,0,0,0]);
    v(-5, 7, 4) voxel(walls=[0,0,1,1,0,0]);
    v(-4, 7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(-1, 7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(0, 7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(1, 7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(2, 7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(3, 7, 4) voxel(walls=[0,0,0,0,0,0]);
    v(4, 7, 4) voxel(walls=[0,1,1,0,0,0]);
    v(-4, 8, 4) voxel(walls=[0,0,1,1,0,0]);
    v(-3, 8, 4) voxel(walls=[0,0,1,0,0,0]);
    v(-2, 8, 4) voxel(walls=[0,0,1,0,0,0]);
    v(-1, 8, 4) voxel(walls=[0,0,1,0,0,0]);
    v(0, 8, 4) voxel(walls=[0,0,1,0,0,0]);
    v(1, 8, 4) voxel(walls=[0,0,1,0,0,0]);
    v(2, 8, 4) voxel(walls=[0,0,1,0,0,0]);
    v(3, 8, 4) voxel(walls=[0,1,1,0,0,0]);
}
}
