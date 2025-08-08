// Generated ring file
// Generated at 2025-08-08T22:28:59.016Z
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


// Rings for connecting front and back parts
union() {
    v(-2, -9, 4) ringCell(grooves=[0,1,1,0]);
    v(-1, -9, 4) ringCell(grooves=[1,0,1,0]);
    v(0, -9, 4) ringCell(grooves=[1,0,1,0]);
    v(1, -9, 4) ringCell(grooves=[1,1,0,0]);
    v(-2, -8, 4) ringCell(grooves=[0,1,0,1]);
    v(1, -8, 4) ringCell(grooves=[0,1,0,1]);
    v(-2, -7, 4) ringCell(grooves=[0,1,0,1]);
    v(1, -7, 4) ringCell(grooves=[0,1,0,1]);
    v(-2, -6, 4) ringCell(grooves=[0,0,1,1]);
    v(-1, -6, 4) ringCell(grooves=[1,1,0,0]);
    v(0, -6, 4) ringCell(grooves=[0,1,1,0]);
    v(1, -6, 4) ringCell(grooves=[1,0,0,1]);
    v(-1, -5, 4) ringCell(grooves=[0,1,0,1]);
    v(0, -5, 4) ringCell(grooves=[0,1,0,1]);
    v(-2, -4, 4) ringCell(grooves=[0,1,1,0]);
    v(-1, -4, 4) ringCell(grooves=[1,0,0,1]);
    v(0, -4, 4) ringCell(grooves=[0,0,1,1]);
    v(1, -4, 4) ringCell(grooves=[1,1,0,0]);
    v(-3, -3, 4) ringCell(grooves=[0,1,1,0]);
    v(-2, -3, 4) ringCell(grooves=[1,0,0,1]);
    v(1, -3, 4) ringCell(grooves=[0,1,0,1]);
    v(-4, -2, 4) ringCell(grooves=[0,1,1,0]);
    v(-3, -2, 4) ringCell(grooves=[1,0,0,1]);
    v(0, -2, 4) ringCell(grooves=[0,1,1,0]);
    v(1, -2, 4) ringCell(grooves=[1,0,0,1]);
    v(-5, -1, 4) ringCell(grooves=[0,1,1,0]);
    v(-4, -1, 4) ringCell(grooves=[1,0,0,1]);
    v(-1, -1, 4) ringCell(grooves=[0,1,1,0]);
    v(0, -1, 4) ringCell(grooves=[1,0,0,1]);
    v(-6, 0, 4) ringCell(grooves=[0,1,1,0]);
    v(-5, 0, 4) ringCell(grooves=[1,0,0,1]);
    v(-2, 0, 4) ringCell(grooves=[0,1,1,0]);
    v(-1, 0, 4) ringCell(grooves=[1,0,0,1]);
    v(-7, 1, 4) ringCell(grooves=[0,1,1,0]);
    v(-6, 1, 4) ringCell(grooves=[1,0,0,1]);
    v(-3, 1, 4) ringCell(grooves=[0,1,1,0]);
    v(-2, 1, 4) ringCell(grooves=[1,0,0,1]);
    v(3, 1, 4) ringCell(grooves=[0,1,1,0]);
    v(4, 1, 4) ringCell(grooves=[1,0,1,0]);
    v(5, 1, 4) ringCell(grooves=[1,1,0,0]);
    v(-7, 2, 4) ringCell(grooves=[0,1,0,1]);
    v(-3, 2, 4) ringCell(grooves=[0,1,0,1]);
    v(2, 2, 4) ringCell(grooves=[0,1,1,0]);
    v(3, 2, 4) ringCell(grooves=[1,0,0,1]);
    v(5, 2, 4) ringCell(grooves=[0,0,1,1]);
    v(6, 2, 4) ringCell(grooves=[1,1,0,0]);
    v(-7, 3, 4) ringCell(grooves=[0,1,0,1]);
    v(-3, 3, 4) ringCell(grooves=[0,1,0,1]);
    v(2, 3, 4) ringCell(grooves=[0,1,0,1]);
    v(6, 3, 4) ringCell(grooves=[0,1,0,1]);
    v(-7, 4, 4) ringCell(grooves=[0,1,0,1]);
    v(-3, 4, 4) ringCell(grooves=[0,0,1,1]);
    v(-2, 4, 4) ringCell(grooves=[1,1,0,0]);
    v(1, 4, 4) ringCell(grooves=[0,1,1,0]);
    v(2, 4, 4) ringCell(grooves=[1,0,0,1]);
    v(6, 4, 4) ringCell(grooves=[0,1,0,1]);
    v(-7, 5, 4) ringCell(grooves=[0,0,1,1]);
    v(-6, 5, 4) ringCell(grooves=[1,1,0,0]);
    v(-2, 5, 4) ringCell(grooves=[0,0,1,1]);
    v(-1, 5, 4) ringCell(grooves=[1,0,1,0]);
    v(0, 5, 4) ringCell(grooves=[1,0,1,0]);
    v(1, 5, 4) ringCell(grooves=[1,0,0,1]);
    v(5, 5, 4) ringCell(grooves=[0,1,1,0]);
    v(6, 5, 4) ringCell(grooves=[1,0,0,1]);
    v(-6, 6, 4) ringCell(grooves=[0,0,1,1]);
    v(-5, 6, 4) ringCell(grooves=[1,1,0,0]);
    v(4, 6, 4) ringCell(grooves=[0,1,1,0]);
    v(5, 6, 4) ringCell(grooves=[1,0,0,1]);
    v(-5, 7, 4) ringCell(grooves=[0,0,1,1]);
    v(-4, 7, 4) ringCell(grooves=[1,1,0,0]);
    v(3, 7, 4) ringCell(grooves=[0,1,1,0]);
    v(4, 7, 4) ringCell(grooves=[1,0,0,1]);
    v(-4, 8, 4) ringCell(grooves=[0,0,1,1]);
    v(-3, 8, 4) ringCell(grooves=[1,0,1,0]);
    v(-2, 8, 4) ringCell(grooves=[1,0,1,0]);
    v(-1, 8, 4) ringCell(grooves=[1,0,1,0]);
    v(0, 8, 4) ringCell(grooves=[1,0,1,0]);
    v(1, 8, 4) ringCell(grooves=[1,0,1,0]);
    v(2, 8, 4) ringCell(grooves=[1,0,1,0]);
    v(3, 8, 4) ringCell(grooves=[1,0,0,1]);
}
