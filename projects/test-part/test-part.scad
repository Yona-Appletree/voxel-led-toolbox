
// Generated at 2025-08-09T04:20:24.891Z
// by gen-model.ts

scene = "preview";

if (scene == "front") {
  frontPart();
} else if (scene == "back") {
  backPart();
} else if (scene == "ring") {
  ringPart();
} else if (scene == "all") {
  translate([-12, 0, 0]) frontPart();
  translate([12, 0, 0]) backPart();
  ringPart();
} else if (scene == "preview") {
  frontPart();
  translate([-12, 0, 0])
  rotate([0, 180, 0]) backPart();
}
  
module frontPart() {
  
// Main model
translate([0,0, 31])rotate([180,0,0]) union() {
    v(-1, -1, 1) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(0, -1, 1) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-1, 0, 1) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(0, 0, 1) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
}

}
  
module backPart() {
  
// Main model
translate([0,0, 31])rotate([180,0,0]) union() {
    v(-1, -1, 1) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(0, -1, 1) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-1, 0, 1) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(0, 0, 1) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
}

}
  
module ringPart() {
  
// Rings for connecting front and back parts
translate([0,0, -25])
union() {
    v(-1, -1, 1) ringCell(grooves=[0,1,1,0]);
    v(0, -1, 1) ringCell(grooves=[1,1,0,0]);
    v(-1, 0, 1) ringCell(grooves=[0,0,1,1]);
    v(0, 0, 1) ringCell(grooves=[1,0,0,1]);
}

}
  
// Voxel utility modules
voxelSize = 12;
wallThickness = 2;
ringWidth = 3;
ringHeight = 10;
ringTolerance = 0.025;

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
