
// Generated at 2025-08-08T23:26:55.391Z
// by gen-model.ts

scene = "all";

if (scene == "front") {
  frontPart();
} else if (scene == "back") {
  backPart();
} else if (scene == "ring") {
  ringPart();
} else if (scene == "all") {
  translate([-150, 0, 0]) frontPart();
  translate([150, 0, 0]) backPart();
  ringPart();
} else if (scene == "preview") {
  frontPart();
  translate([-10, 0, 0])
  rotate([0, 180, 0]) backPart();
}
  
module frontPart() {
  
// Main model
translate([0,0, 46])rotate([180,0,0]) union() {
    v(-1, -11, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(0, -11, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -10, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-1, -10, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -10, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -10, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -9, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -9, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -9, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -8, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(0, -8, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -4, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(0, -4, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -3, 2) voxel(walls=[1,0,1,1,1,0], grooves=[0,0,0,0]);
    v(-1, -3, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -3, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -3, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-1, -2, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(0, -2, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -2, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -2, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(0, -1, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(1, -1, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -1, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -1, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 0, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(2, 0, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 0, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 0, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(2, 1, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(3, 1, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 1, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 1, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-6, 2, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-5, 2, 2) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-4, 2, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(3, 2, 2) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(4, 2, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 2, 2) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 3, 2) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-5, 3, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 3, 2) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 3, 2) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(4, 3, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 3, 2) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 4, 2) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-5, 4, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 4, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 4, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(2, 4, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(3, 4, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 4, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 4, 2) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 5, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-5, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 5, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 5, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(2, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 5, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-5, 6, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-4, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 6, 2) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(0, 6, 2) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 6, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-4, 7, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-3, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-2, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(0, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(1, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(2, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(3, 7, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -12, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(0, -12, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -11, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-1, -11, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -11, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -11, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-3, -10, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-2, -10, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -10, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -10, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -10, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -10, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-3, -9, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-2, -9, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -9, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -9, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -9, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-2, -8, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-1, -8, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -8, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -8, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -7, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(0, -7, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -5, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(0, -5, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -4, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-1, -4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -4, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -3, 3) voxel(walls=[0,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-1, -3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -3, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -2, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-1, -2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -2, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-1, -1, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(0, -1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -1, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(0, 0, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(1, 0, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 0, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 0, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 0, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 0, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-6, 1, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-5, 1, 3) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-4, 1, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 1, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(2, 1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 1, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-7, 2, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-6, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 2, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(2, 2, 3) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(3, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 2, 3) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, 3, 3) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-6, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 3, 3) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 3, 3) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(3, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 3, 3) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, 4, 3) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-6, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 4, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 4, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(2, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 4, 3) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, 5, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-6, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 5, 3) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(0, 5, 3) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 5, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-6, 6, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-5, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 6, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-5, 7, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-4, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 7, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-4, 8, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-3, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-2, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(0, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(1, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(2, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(3, 8, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-2, -12, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-1, -12, 4) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(0, -12, 4) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(1, -12, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-3, -11, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-2, -11, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-1, -11, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -11, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -11, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(2, -11, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-3, -10, 4) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-2, -10, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -10, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -10, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -10, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -10, 4) voxel(walls=[0,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-3, -9, 4) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-2, -9, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -9, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -9, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -9, 4) voxel(walls=[0,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-3, -8, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-2, -8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-1, -8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(2, -8, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-2, -7, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-1, -7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(0, -7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(1, -7, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-1, -6, 4) voxel(walls=[1,0,0,1,0,0], grooves=[0,1,0,1]);
    v(0, -6, 4) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-2, -5, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-1, -5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(0, -5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(1, -5, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-3, -4, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-2, -4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-1, -4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(2, -4, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-3, -3, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-2, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-1, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(3, -3, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-2, -2, 4) voxel(walls=[0,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-1, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(0, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(4, -2, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-1, -1, 4) voxel(walls=[0,0,1,1,0,0], grooves=[0,0,1,1]);
    v(0, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(1, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(5, -1, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-6, 0, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-5, 0, 4) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(-4, 0, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(0, 0, 4) voxel(walls=[0,0,1,1,0,0], grooves=[0,0,1,1]);
    v(1, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(2, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(6, 0, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-7, 1, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-6, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-5, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 1, 4) voxel(walls=[0,1,0,0,0,0], grooves=[0,1,0,1]);
    v(1, 1, 4) voxel(walls=[0,0,1,1,0,0], grooves=[0,0,1,1]);
    v(2, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(3, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(7, 1, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-8, 2, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-7, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-6, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(-3, 2, 4) voxel(walls=[0,1,0,0,1,0], grooves=[1,1,0,0]);
    v(2, 2, 4) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(3, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, 2, 4) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-8, 3, 4) voxel(walls=[1,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-7, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 3, 4) voxel(walls=[0,1,0,0,0,0], grooves=[0,1,0,1]);
    v(2, 3, 4) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(3, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, 3, 4) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-8, 4, 4) voxel(walls=[1,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-7, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(-2, 4, 4) voxel(walls=[0,1,0,0,1,0], grooves=[1,1,0,0]);
    v(1, 4, 4) voxel(walls=[0,0,0,1,1,0], grooves=[0,1,1,0]);
    v(2, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(3, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, 4, 4) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-8, 5, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-7, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-6, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(-1, 5, 4) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(0, 5, 4) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(1, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(2, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(7, 5, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-7, 6, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-6, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-5, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(6, 6, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-6, 7, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-5, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-4, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(5, 7, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-5, 8, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-4, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-3, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(4, 8, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-4, 9, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-3, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(-2, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(-1, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(0, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(1, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(2, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(3, 9, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
}

}
  
module backPart() {
  
// Main model
translate([0,0, 46])rotate([180,0,0]) union() {
    v(-1, -11, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(0, -11, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -10, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-1, -10, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -10, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -10, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -9, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -9, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -9, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -8, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(0, -8, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -4, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(0, -4, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -3, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-1, -3, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -3, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -3, 2) voxel(walls=[1,1,1,0,1,0], grooves=[0,0,0,0]);
    v(-3, -2, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-2, -2, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -2, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -2, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-4, -1, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-3, -1, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -1, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -1, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-5, 0, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-4, 0, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 0, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 0, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-6, 1, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-5, 1, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 1, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 1, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-6, 2, 2) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-5, 2, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 2, 2) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 2, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(4, 2, 2) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(5, 2, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-6, 3, 2) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-5, 3, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 3, 2) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 3, 2) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(4, 3, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 3, 2) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 4, 2) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-5, 4, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 4, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 4, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(2, 4, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(3, 4, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 4, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 4, 2) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 5, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-5, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 5, 2) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 5, 2) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(2, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 5, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 5, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-5, 6, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-4, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 6, 2) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(0, 6, 2) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 6, 2) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 6, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-4, 7, 2) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-3, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-2, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(0, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(1, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(2, 7, 2) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(3, 7, 2) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -12, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(0, -12, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -11, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-1, -11, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -11, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -11, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-3, -10, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-2, -10, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -10, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -10, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -10, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -10, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-3, -9, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-2, -9, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -9, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -9, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -9, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-2, -8, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-1, -8, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -8, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -8, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -7, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(0, -7, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, -5, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(0, -5, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -4, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-1, -4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -4, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-3, -3, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-2, -3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -3, 3) voxel(walls=[0,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -2, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-3, -2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -2, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-5, -1, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-4, -1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -1, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-6, 0, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-5, 0, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 0, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 0, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 0, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 0, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-7, 1, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-6, 1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 1, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 1, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(3, 1, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(4, 1, 3) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(5, 1, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-7, 2, 3) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-6, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 2, 3) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 2, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(3, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 2, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 2, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-7, 3, 3) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-6, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 3, 3) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 3, 3) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(3, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 3, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 3, 3) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, 4, 3) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-6, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 4, 3) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 4, 3) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(2, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 4, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 4, 3) voxel(walls=[1,1,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, 5, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-6, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 5, 3) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(0, 5, 3) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(1, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 5, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 5, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-6, 6, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-5, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 6, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 6, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-5, 7, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-4, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 7, 3) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 7, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-4, 8, 3) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-3, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-2, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-1, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(0, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(1, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(2, 8, 3) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(3, 8, 3) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-2, -12, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-1, -12, 4) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(0, -12, 4) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(1, -12, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-3, -11, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-2, -11, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-1, -11, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -11, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -11, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(2, -11, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-3, -10, 4) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-2, -10, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -10, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -10, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -10, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -10, 4) voxel(walls=[0,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-3, -9, 4) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-2, -9, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -9, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -9, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -9, 4) voxel(walls=[0,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-3, -8, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-2, -8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-1, -8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(2, -8, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-2, -7, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-1, -7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(0, -7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(1, -7, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-1, -6, 4) voxel(walls=[1,0,0,1,0,0], grooves=[0,1,0,1]);
    v(0, -6, 4) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-2, -5, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-1, -5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(0, -5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(1, -5, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-3, -4, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-2, -4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-1, -4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(2, -4, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-4, -3, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-3, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-2, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(2, -3, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-5, -2, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-4, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-3, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(1, -2, 4) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-6, -1, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-5, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-4, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(0, -1, 4) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-7, 0, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-6, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-5, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 0, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-1, 0, 4) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(3, 0, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(4, 0, 4) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(5, 0, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-8, 1, 4) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-7, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-6, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-2, 1, 4) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(3, 1, 4) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(4, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 1, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(6, 1, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-8, 2, 4) voxel(walls=[1,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-7, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 2, 4) voxel(walls=[0,1,0,0,0,0], grooves=[0,1,0,1]);
    v(2, 2, 4) voxel(walls=[0,0,0,1,1,0], grooves=[0,1,1,0]);
    v(3, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(4, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 2, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(7, 2, 4) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-8, 3, 4) voxel(walls=[1,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-7, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 3, 4) voxel(walls=[0,1,0,0,0,0], grooves=[0,1,0,1]);
    v(2, 3, 4) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(3, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 3, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, 3, 4) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-8, 4, 4) voxel(walls=[1,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-7, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(-2, 4, 4) voxel(walls=[0,1,0,0,1,0], grooves=[1,1,0,0]);
    v(1, 4, 4) voxel(walls=[0,0,0,1,1,0], grooves=[0,1,1,0]);
    v(2, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(3, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 4, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, 4, 4) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(-8, 5, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-7, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-6, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(-1, 5, 4) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(0, 5, 4) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(1, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(2, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 5, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(7, 5, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-7, 6, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-6, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-5, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 6, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(6, 6, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-6, 7, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-5, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-4, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, 7, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(5, 7, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-5, 8, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-4, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-3, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, 8, 4) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(4, 8, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-4, 9, 4) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-3, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(-2, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(-1, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(0, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(1, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(2, 9, 4) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(3, 9, 4) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
}

}
  
module ringPart() {
  
// Rings for connecting front and back parts
translate([0,0, -42])
union() {
    v(-2, -12, 4) ringCell(grooves=[0,1,1,0]);
    v(-1, -12, 4) ringCell(grooves=[1,0,1,0]);
    v(0, -12, 4) ringCell(grooves=[1,0,1,0]);
    v(1, -12, 4) ringCell(grooves=[1,1,0,0]);
    v(-3, -11, 4) ringCell(grooves=[0,1,1,0]);
    v(-2, -11, 4) ringCell(grooves=[1,0,0,1]);
    v(1, -11, 4) ringCell(grooves=[0,0,1,1]);
    v(2, -11, 4) ringCell(grooves=[1,1,0,0]);
    v(-3, -10, 4) ringCell(grooves=[0,1,0,1]);
    v(2, -10, 4) ringCell(grooves=[0,1,0,1]);
    v(-3, -9, 4) ringCell(grooves=[0,1,0,1]);
    v(2, -9, 4) ringCell(grooves=[0,1,0,1]);
    v(-3, -8, 4) ringCell(grooves=[0,0,1,1]);
    v(-2, -8, 4) ringCell(grooves=[1,1,0,0]);
    v(1, -8, 4) ringCell(grooves=[0,1,1,0]);
    v(2, -8, 4) ringCell(grooves=[1,0,0,1]);
    v(-2, -7, 4) ringCell(grooves=[0,0,1,1]);
    v(-1, -7, 4) ringCell(grooves=[1,1,0,0]);
    v(0, -7, 4) ringCell(grooves=[0,1,1,0]);
    v(1, -7, 4) ringCell(grooves=[1,0,0,1]);
    v(-1, -6, 4) ringCell(grooves=[0,1,0,1]);
    v(0, -6, 4) ringCell(grooves=[0,1,0,1]);
    v(-2, -5, 4) ringCell(grooves=[0,1,1,0]);
    v(-1, -5, 4) ringCell(grooves=[1,0,0,1]);
    v(0, -5, 4) ringCell(grooves=[0,0,1,1]);
    v(1, -5, 4) ringCell(grooves=[1,1,0,0]);
    v(-3, -4, 4) ringCell(grooves=[0,1,1,0]);
    v(-2, -4, 4) ringCell(grooves=[1,0,0,1]);
    v(1, -4, 4) ringCell(grooves=[0,0,1,1]);
    v(2, -4, 4) ringCell(grooves=[1,1,0,0]);
    v(-4, -3, 4) ringCell(grooves=[0,1,1,0]);
    v(-3, -3, 4) ringCell(grooves=[1,0,0,1]);
    v(1, -3, 4) ringCell(grooves=[0,1,1,0]);
    v(2, -3, 4) ringCell(grooves=[1,0,0,1]);
    v(-5, -2, 4) ringCell(grooves=[0,1,1,0]);
    v(-4, -2, 4) ringCell(grooves=[1,0,0,1]);
    v(0, -2, 4) ringCell(grooves=[0,1,1,0]);
    v(1, -2, 4) ringCell(grooves=[1,0,0,1]);
    v(-6, -1, 4) ringCell(grooves=[0,1,1,0]);
    v(-5, -1, 4) ringCell(grooves=[1,0,0,1]);
    v(-1, -1, 4) ringCell(grooves=[0,1,1,0]);
    v(0, -1, 4) ringCell(grooves=[1,0,0,1]);
    v(-7, 0, 4) ringCell(grooves=[0,1,1,0]);
    v(-6, 0, 4) ringCell(grooves=[1,0,0,1]);
    v(-2, 0, 4) ringCell(grooves=[0,1,1,0]);
    v(-1, 0, 4) ringCell(grooves=[1,0,0,1]);
    v(3, 0, 4) ringCell(grooves=[0,1,1,0]);
    v(4, 0, 4) ringCell(grooves=[1,0,1,0]);
    v(5, 0, 4) ringCell(grooves=[1,1,0,0]);
    v(-8, 1, 4) ringCell(grooves=[0,1,1,0]);
    v(-7, 1, 4) ringCell(grooves=[1,0,0,1]);
    v(-3, 1, 4) ringCell(grooves=[0,1,1,0]);
    v(-2, 1, 4) ringCell(grooves=[1,0,0,1]);
    v(3, 1, 4) ringCell(grooves=[0,1,0,1]);
    v(5, 1, 4) ringCell(grooves=[0,0,1,1]);
    v(6, 1, 4) ringCell(grooves=[1,1,0,0]);
    v(-8, 2, 4) ringCell(grooves=[0,1,0,1]);
    v(-3, 2, 4) ringCell(grooves=[0,1,0,1]);
    v(2, 2, 4) ringCell(grooves=[0,1,1,0]);
    v(3, 2, 4) ringCell(grooves=[1,0,0,1]);
    v(6, 2, 4) ringCell(grooves=[0,0,1,1]);
    v(7, 2, 4) ringCell(grooves=[1,1,0,0]);
    v(-8, 3, 4) ringCell(grooves=[0,1,0,1]);
    v(-3, 3, 4) ringCell(grooves=[0,1,0,1]);
    v(2, 3, 4) ringCell(grooves=[0,1,0,1]);
    v(7, 3, 4) ringCell(grooves=[0,1,0,1]);
    v(-8, 4, 4) ringCell(grooves=[0,1,0,1]);
    v(-3, 4, 4) ringCell(grooves=[0,0,1,1]);
    v(-2, 4, 4) ringCell(grooves=[1,1,0,0]);
    v(1, 4, 4) ringCell(grooves=[0,1,1,0]);
    v(2, 4, 4) ringCell(grooves=[1,0,0,1]);
    v(7, 4, 4) ringCell(grooves=[0,1,0,1]);
    v(-8, 5, 4) ringCell(grooves=[0,0,1,1]);
    v(-7, 5, 4) ringCell(grooves=[1,1,0,0]);
    v(-2, 5, 4) ringCell(grooves=[0,0,1,1]);
    v(-1, 5, 4) ringCell(grooves=[1,0,1,0]);
    v(0, 5, 4) ringCell(grooves=[1,0,1,0]);
    v(1, 5, 4) ringCell(grooves=[1,0,0,1]);
    v(6, 5, 4) ringCell(grooves=[0,1,1,0]);
    v(7, 5, 4) ringCell(grooves=[1,0,0,1]);
    v(-7, 6, 4) ringCell(grooves=[0,0,1,1]);
    v(-6, 6, 4) ringCell(grooves=[1,1,0,0]);
    v(5, 6, 4) ringCell(grooves=[0,1,1,0]);
    v(6, 6, 4) ringCell(grooves=[1,0,0,1]);
    v(-6, 7, 4) ringCell(grooves=[0,0,1,1]);
    v(-5, 7, 4) ringCell(grooves=[1,1,0,0]);
    v(4, 7, 4) ringCell(grooves=[0,1,1,0]);
    v(5, 7, 4) ringCell(grooves=[1,0,0,1]);
    v(-5, 8, 4) ringCell(grooves=[0,0,1,1]);
    v(-4, 8, 4) ringCell(grooves=[1,1,0,0]);
    v(3, 8, 4) ringCell(grooves=[0,1,1,0]);
    v(4, 8, 4) ringCell(grooves=[1,0,0,1]);
    v(-4, 9, 4) ringCell(grooves=[0,0,1,1]);
    v(-3, 9, 4) ringCell(grooves=[1,0,1,0]);
    v(-2, 9, 4) ringCell(grooves=[1,0,1,0]);
    v(-1, 9, 4) ringCell(grooves=[1,0,1,0]);
    v(0, 9, 4) ringCell(grooves=[1,0,1,0]);
    v(1, 9, 4) ringCell(grooves=[1,0,1,0]);
    v(2, 9, 4) ringCell(grooves=[1,0,1,0]);
    v(3, 9, 4) ringCell(grooves=[1,0,0,1]);
}

}
  
// Voxel utility modules
voxelSize = 10;
wallThickness = 2;
ringWidth = 2;
ringHeight = 6;
ringTolerance = 0.2;

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
        
            
            translate([0,0,1 + wallThickness]) 
                linear_extrude(ringHeight/2+1) 
                offset(ringTolerance) {
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
                if (grooves[0]) rotate(180) ringLine();
                if (grooves[1]) rotate(90) ringLine();
                if (grooves[2]) rotate(0) ringLine();
                if (grooves[3]) rotate(270) ringLine();
            }
    }
}
