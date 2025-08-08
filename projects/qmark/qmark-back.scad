// Generated OpenSCAD file for back part
// Generated at 2025-08-08T20:37:05.509Z
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
union() {
    v(-2, -9, 5) voxel(walls=[0,0,0,1,1,1]);
    v(-1, -9, 5) voxel(walls=[0,0,0,0,1,1]);
    v(0, -9, 5) voxel(walls=[0,0,0,0,1,1]);
    v(1, -9, 5) voxel(walls=[0,1,0,0,1,1]);
    v(-2, -8, 5) voxel(walls=[0,0,0,1,0,1]);
    v(-1, -8, 5) voxel(walls=[0,0,0,0,0,0]);
    v(0, -8, 5) voxel(walls=[0,0,0,0,0,0]);
    v(1, -8, 5) voxel(walls=[0,1,0,0,0,1]);
    v(-2, -7, 5) voxel(walls=[0,0,0,1,0,1]);
    v(-1, -7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(0, -7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(1, -7, 5) voxel(walls=[0,1,0,0,0,1]);
    v(-2, -6, 5) voxel(walls=[0,0,1,1,0,1]);
    v(-1, -6, 5) voxel(walls=[0,0,1,0,0,1]);
    v(0, -6, 5) voxel(walls=[0,0,1,0,0,1]);
    v(1, -6, 5) voxel(walls=[0,1,1,0,0,1]);
    v(-2, -4, 5) voxel(walls=[0,0,0,1,1,1]);
    v(-1, -4, 5) voxel(walls=[0,0,0,0,1,1]);
    v(0, -4, 5) voxel(walls=[0,0,0,0,1,1]);
    v(1, -4, 5) voxel(walls=[0,1,0,0,1,1]);
    v(-2, -3, 5) voxel(walls=[0,0,0,1,0,1]);
    v(-1, -3, 5) voxel(walls=[0,0,0,0,0,0]);
    v(0, -3, 5) voxel(walls=[0,0,0,0,0,0]);
    v(1, -3, 5) voxel(walls=[0,0,0,0,0,0]);
    v(2, -3, 5) voxel(walls=[0,1,0,0,1,1]);
    v(-2, -2, 5) voxel(walls=[0,0,1,1,0,1]);
    v(-1, -2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(0, -2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(1, -2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(2, -2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(3, -2, 5) voxel(walls=[0,1,0,0,1,1]);
    v(-1, -1, 5) voxel(walls=[0,0,1,1,0,1]);
    v(0, -1, 5) voxel(walls=[0,0,0,0,0,0]);
    v(1, -1, 5) voxel(walls=[0,0,0,0,0,0]);
    v(2, -1, 5) voxel(walls=[0,0,0,0,0,0]);
    v(3, -1, 5) voxel(walls=[0,0,0,0,0,0]);
    v(4, -1, 5) voxel(walls=[0,1,0,0,1,1]);
    v(0, 0, 5) voxel(walls=[0,0,1,1,0,1]);
    v(1, 0, 5) voxel(walls=[0,0,0,0,0,0]);
    v(2, 0, 5) voxel(walls=[0,0,0,0,0,0]);
    v(3, 0, 5) voxel(walls=[0,0,0,0,0,0]);
    v(4, 0, 5) voxel(walls=[0,0,0,0,0,0]);
    v(5, 0, 5) voxel(walls=[0,1,0,0,1,1]);
    v(-6, 1, 5) voxel(walls=[0,0,0,1,1,1]);
    v(-5, 1, 5) voxel(walls=[0,0,0,0,1,1]);
    v(-4, 1, 5) voxel(walls=[0,1,0,0,1,1]);
    v(1, 1, 5) voxel(walls=[0,0,1,1,0,1]);
    v(2, 1, 5) voxel(walls=[0,0,0,0,0,0]);
    v(3, 1, 5) voxel(walls=[0,0,0,0,0,0]);
    v(4, 1, 5) voxel(walls=[0,0,0,0,0,0]);
    v(5, 1, 5) voxel(walls=[0,0,0,0,0,0]);
    v(6, 1, 5) voxel(walls=[0,1,0,0,1,1]);
    v(-7, 2, 5) voxel(walls=[0,0,0,1,1,1]);
    v(-6, 2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 2, 5) voxel(walls=[0,1,0,0,1,1]);
    v(2, 2, 5) voxel(walls=[0,0,0,1,0,1]);
    v(3, 2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(4, 2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(5, 2, 5) voxel(walls=[0,0,0,0,0,0]);
    v(6, 2, 5) voxel(walls=[0,1,0,0,0,1]);
    v(-7, 3, 5) voxel(walls=[0,0,0,1,0,1]);
    v(-6, 3, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 3, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 3, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 3, 5) voxel(walls=[0,1,0,0,0,1]);
    v(2, 3, 5) voxel(walls=[0,0,0,1,0,1]);
    v(3, 3, 5) voxel(walls=[0,0,0,0,0,0]);
    v(4, 3, 5) voxel(walls=[0,0,0,0,0,0]);
    v(5, 3, 5) voxel(walls=[0,0,0,0,0,0]);
    v(6, 3, 5) voxel(walls=[0,1,0,0,0,1]);
    v(-7, 4, 5) voxel(walls=[0,0,0,1,0,1]);
    v(-6, 4, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 4, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 4, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 4, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 4, 5) voxel(walls=[0,1,0,0,1,1]);
    v(1, 4, 5) voxel(walls=[0,0,0,1,1,1]);
    v(2, 4, 5) voxel(walls=[0,0,0,0,0,0]);
    v(3, 4, 5) voxel(walls=[0,0,0,0,0,0]);
    v(4, 4, 5) voxel(walls=[0,0,0,0,0,0]);
    v(5, 4, 5) voxel(walls=[0,0,0,0,0,0]);
    v(6, 4, 5) voxel(walls=[0,1,0,0,0,1]);
    v(-7, 5, 5) voxel(walls=[0,0,1,1,0,1]);
    v(-6, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-5, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-1, 5, 5) voxel(walls=[0,0,0,0,1,1]);
    v(0, 5, 5) voxel(walls=[0,0,0,0,1,1]);
    v(1, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(2, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(3, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(4, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(5, 5, 5) voxel(walls=[0,0,0,0,0,0]);
    v(6, 5, 5) voxel(walls=[0,1,1,0,0,1]);
    v(-6, 6, 5) voxel(walls=[0,0,1,1,0,1]);
    v(-5, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-4, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-1, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(0, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(1, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(2, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(3, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(4, 6, 5) voxel(walls=[0,0,0,0,0,0]);
    v(5, 6, 5) voxel(walls=[0,1,1,0,0,1]);
    v(-5, 7, 5) voxel(walls=[0,0,1,1,0,1]);
    v(-4, 7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-3, 7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-2, 7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(-1, 7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(0, 7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(1, 7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(2, 7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(3, 7, 5) voxel(walls=[0,0,0,0,0,0]);
    v(4, 7, 5) voxel(walls=[0,1,1,0,0,1]);
    v(-4, 8, 5) voxel(walls=[0,0,1,1,0,1]);
    v(-3, 8, 5) voxel(walls=[0,0,1,0,0,1]);
    v(-2, 8, 5) voxel(walls=[0,0,1,0,0,1]);
    v(-1, 8, 5) voxel(walls=[0,0,1,0,0,1]);
    v(0, 8, 5) voxel(walls=[0,0,1,0,0,1]);
    v(1, 8, 5) voxel(walls=[0,0,1,0,0,1]);
    v(2, 8, 5) voxel(walls=[0,0,1,0,0,1]);
    v(3, 8, 5) voxel(walls=[0,1,1,0,0,1]);
    v(-1, -8, 6) voxel(walls=[0,0,0,1,1,1]);
    v(0, -8, 6) voxel(walls=[0,1,0,0,1,1]);
    v(-1, -7, 6) voxel(walls=[0,0,1,1,0,1]);
    v(0, -7, 6) voxel(walls=[0,1,1,0,0,1]);
    v(-1, -3, 6) voxel(walls=[0,0,0,1,1,1]);
    v(0, -3, 6) voxel(walls=[0,0,0,0,1,1]);
    v(1, -3, 6) voxel(walls=[0,1,0,0,1,1]);
    v(-1, -2, 6) voxel(walls=[0,0,1,1,0,1]);
    v(0, -2, 6) voxel(walls=[0,0,0,0,0,1]);
    v(1, -2, 6) voxel(walls=[0,0,0,0,0,1]);
    v(2, -2, 6) voxel(walls=[0,1,0,0,1,1]);
    v(0, -1, 6) voxel(walls=[0,0,1,1,0,1]);
    v(1, -1, 6) voxel(walls=[0,0,0,0,0,1]);
    v(2, -1, 6) voxel(walls=[0,0,0,0,0,1]);
    v(3, -1, 6) voxel(walls=[0,1,0,0,1,1]);
    v(1, 0, 6) voxel(walls=[0,0,1,1,0,1]);
    v(2, 0, 6) voxel(walls=[0,0,0,0,0,1]);
    v(3, 0, 6) voxel(walls=[0,0,0,0,0,1]);
    v(4, 0, 6) voxel(walls=[0,1,0,0,1,1]);
    v(2, 1, 6) voxel(walls=[0,0,1,1,0,1]);
    v(3, 1, 6) voxel(walls=[0,0,0,0,0,1]);
    v(4, 1, 6) voxel(walls=[0,0,0,0,0,1]);
    v(5, 1, 6) voxel(walls=[0,1,0,0,1,1]);
    v(-6, 2, 6) voxel(walls=[0,0,0,1,1,1]);
    v(-5, 2, 6) voxel(walls=[0,0,0,0,1,1]);
    v(-4, 2, 6) voxel(walls=[0,1,0,0,1,1]);
    v(3, 2, 6) voxel(walls=[0,0,0,1,0,1]);
    v(4, 2, 6) voxel(walls=[0,0,0,0,0,1]);
    v(5, 2, 6) voxel(walls=[0,1,0,0,0,1]);
    v(-6, 3, 6) voxel(walls=[0,0,0,1,0,1]);
    v(-5, 3, 6) voxel(walls=[0,0,0,0,0,1]);
    v(-4, 3, 6) voxel(walls=[0,1,0,0,0,1]);
    v(3, 3, 6) voxel(walls=[0,0,0,1,0,1]);
    v(4, 3, 6) voxel(walls=[0,0,0,0,0,1]);
    v(5, 3, 6) voxel(walls=[0,1,0,0,0,1]);
    v(-6, 4, 6) voxel(walls=[0,0,0,1,0,1]);
    v(-5, 4, 6) voxel(walls=[0,0,0,0,0,1]);
    v(-4, 4, 6) voxel(walls=[0,0,0,0,0,1]);
    v(-3, 4, 6) voxel(walls=[0,1,0,0,1,1]);
    v(2, 4, 6) voxel(walls=[0,0,0,1,1,1]);
    v(3, 4, 6) voxel(walls=[0,0,0,0,0,1]);
    v(4, 4, 6) voxel(walls=[0,0,0,0,0,1]);
    v(5, 4, 6) voxel(walls=[0,1,0,0,0,1]);
    v(-6, 5, 6) voxel(walls=[0,0,1,1,0,1]);
    v(-5, 5, 6) voxel(walls=[0,0,0,0,0,1]);
    v(-4, 5, 6) voxel(walls=[0,0,0,0,0,1]);
    v(-3, 5, 6) voxel(walls=[0,0,0,0,0,1]);
    v(-2, 5, 6) voxel(walls=[0,1,0,0,1,1]);
    v(1, 5, 6) voxel(walls=[0,0,0,1,1,1]);
    v(2, 5, 6) voxel(walls=[0,0,0,0,0,1]);
    v(3, 5, 6) voxel(walls=[0,0,0,0,0,1]);
    v(4, 5, 6) voxel(walls=[0,0,0,0,0,1]);
    v(5, 5, 6) voxel(walls=[0,1,1,0,0,1]);
    v(-5, 6, 6) voxel(walls=[0,0,1,1,0,1]);
    v(-4, 6, 6) voxel(walls=[0,0,0,0,0,1]);
    v(-3, 6, 6) voxel(walls=[0,0,0,0,0,1]);
    v(-2, 6, 6) voxel(walls=[0,0,0,0,0,1]);
    v(-1, 6, 6) voxel(walls=[0,0,0,0,1,1]);
    v(0, 6, 6) voxel(walls=[0,0,0,0,1,1]);
    v(1, 6, 6) voxel(walls=[0,0,0,0,0,1]);
    v(2, 6, 6) voxel(walls=[0,0,0,0,0,1]);
    v(3, 6, 6) voxel(walls=[0,0,0,0,0,1]);
    v(4, 6, 6) voxel(walls=[0,1,1,0,0,1]);
    v(-4, 7, 6) voxel(walls=[0,0,1,1,0,1]);
    v(-3, 7, 6) voxel(walls=[0,0,1,0,0,1]);
    v(-2, 7, 6) voxel(walls=[0,0,1,0,0,1]);
    v(-1, 7, 6) voxel(walls=[0,0,1,0,0,1]);
    v(0, 7, 6) voxel(walls=[0,0,1,0,0,1]);
    v(1, 7, 6) voxel(walls=[0,0,1,0,0,1]);
    v(2, 7, 6) voxel(walls=[0,0,1,0,0,1]);
    v(3, 7, 6) voxel(walls=[0,1,1,0,0,1]);
}
