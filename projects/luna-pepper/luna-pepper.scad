
// Generated at 2025-08-10T01:17:27.190Z
// by gen-model.ts



scene = "preview";

if (scene == "front") {
  frontPart();
} else if (scene == "back") {
  backPart();
} else if (scene == "ring") {
  ringPart();
} else if (scene == "all") {
  translate([-230, 0, 0]) frontPart();
  translate([230, 0, 0]) backPart();
  ringPart();
} else if (scene == "preview") {
  frontPart();
  translate([-10, 0, 0])
  rotate([0, 180, 0]) backPart();
}
  
module frontPart() {
  
// Main model
translate([0,0, 56])rotate([180,0,0]) union() {
    v(1, -11, 13) voxel(walls=[1,0,1,1,1,0], grooves=[0,0,0,0]);
    v(2, -11, 13) voxel(walls=[1,1,1,0,1,0], grooves=[0,0,0,0]);
    v(0, -10, 13) voxel(walls=[1,1,1,1,1,0], grooves=[0,0,0,0]);
    v(-2, -9, 13) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-1, -9, 13) voxel(walls=[1,1,1,0,1,0], grooves=[0,0,0,0]);
    v(-3, -8, 13) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-2, -8, 13) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-4, -7, 13) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-3, -7, 13) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-5, -6, 13) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-4, -6, 13) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-6, -5, 13) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-5, -5, 13) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-7, -4, 13) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-6, -4, 13) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-9, -3, 13) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-8, -3, 13) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-7, -3, 13) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-10, -2, 13) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-9, -2, 13) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-8, -2, 13) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-10, -1, 13) voxel(walls=[1,1,1,1,0,0], grooves=[0,0,0,0]);
    v(2, -12, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(3, -12, 14) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(4, -12, 14) voxel(walls=[1,0,1,0,1,0], grooves=[0,0,0,0]);
    v(5, -12, 14) voxel(walls=[1,1,1,0,1,0], grooves=[0,0,0,0]);
    v(-1, -11, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(0, -11, 14) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(1, -11, 14) voxel(walls=[0,0,0,0,1,0], grooves=[0,0,0,0]);
    v(2, -11, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -11, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-3, -10, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-2, -10, 14) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-1, -10, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -10, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -10, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -10, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-5, -9, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-4, -9, 14) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-3, -9, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -9, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -9, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -9, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-6, -8, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-5, -8, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -8, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -8, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -8, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -8, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -8, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-7, -7, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-6, -7, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -7, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -7, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -7, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -7, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -7, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-8, -6, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-7, -6, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -6, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -6, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -6, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -6, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -6, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-9, -5, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-8, -5, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -5, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -5, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -5, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -5, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -5, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-10, -4, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-9, -4, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -4, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -4, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -4, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -4, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -4, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-11, -3, 14) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-10, -3, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -3, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -3, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -3, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -3, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -3, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-12, -2, 14) voxel(walls=[1,0,1,1,1,0], grooves=[0,0,0,0]);
    v(-11, -2, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, -2, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -2, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -2, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -2, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -2, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-13, -1, 14) voxel(walls=[1,1,0,1,1,0], grooves=[0,0,0,0]);
    v(-11, -1, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-10, -1, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -1, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -1, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -1, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-13, 0, 14) voxel(walls=[1,1,1,1,0,0], grooves=[0,0,0,0]);
    v(-10, 0, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-9, 0, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, 0, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-12, 1, 14) voxel(walls=[1,0,1,1,1,0], grooves=[0,0,0,0]);
    v(-11, 1, 14) voxel(walls=[1,1,1,0,1,0], grooves=[0,0,0,0]);
    v(-9, 1, 14) voxel(walls=[1,1,1,1,0,0], grooves=[0,0,0,0]);
    v(3, -13, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(4, -13, 15) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(0, -12, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(1, -12, 15) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(2, -12, 15) voxel(walls=[0,0,0,0,1,0], grooves=[0,0,0,0]);
    v(3, -12, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -12, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -12, 15) voxel(walls=[0,0,0,0,1,0], grooves=[0,0,0,0]);
    v(6, -12, 15) voxel(walls=[1,0,1,0,1,0], grooves=[0,0,0,0]);
    v(7, -12, 15) voxel(walls=[1,1,1,0,1,0], grooves=[0,0,0,0]);
    v(-2, -11, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-1, -11, 15) voxel(walls=[0,0,0,0,1,0], grooves=[0,0,0,0]);
    v(0, -11, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -11, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -11, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -11, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -11, 15) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(5, -11, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(8, -11, 15) voxel(walls=[1,1,1,1,1,0], grooves=[0,0,0,0]);
    v(-4, -10, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-3, -10, 15) voxel(walls=[0,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -10, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-6, -9, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-5, -9, 15) voxel(walls=[0,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-4, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -9, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-7, -8, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-6, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -8, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-8, -7, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-7, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -7, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-9, -6, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-8, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -6, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-10, -5, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-9, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -5, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-11, -4, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-10, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -4, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-12, -3, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-11, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -3, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-14, -2, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,0,0,0]);
    v(-13, -2, 15) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-12, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-11, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -2, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-14, -1, 15) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-13, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-12, -1, 15) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-11, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -1, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-14, 0, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-13, 0, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-12, 0, 15) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-11, 0, 15) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, 0, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, 0, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, 0, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, 0, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-13, 1, 15) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-12, 1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-11, 1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, 1, 15) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, 1, 15) voxel(walls=[0,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-8, 1, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-13, 2, 15) voxel(walls=[1,0,0,1,0,0], grooves=[0,0,0,0]);
    v(-12, 2, 15) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-11, 2, 15) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(-10, 2, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(-13, 3, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-12, 3, 15) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(1, -13, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(2, -13, 16) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(3, -13, 16) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(4, -13, 16) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(5, -13, 16) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(6, -13, 16) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(7, -13, 16) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-2, -12, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-1, -12, 16) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(0, -12, 16) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(1, -12, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(2, -12, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -12, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -12, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -12, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, -12, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, -12, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(8, -12, 16) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-4, -11, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-3, -11, 16) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(-2, -11, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-1, -11, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -11, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -11, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -11, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -11, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(4, -11, 16) voxel(walls=[0,0,1,0,0,0], grooves=[1,0,1,0]);
    v(5, -11, 16) voxel(walls=[0,0,1,0,0,0], grooves=[1,0,1,0]);
    v(6, -11, 16) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(7, -11, 16) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(8, -11, 16) voxel(walls=[0,0,1,0,0,0], grooves=[1,0,1,1]);
    v(9, -11, 16) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-6, -10, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-5, -10, 16) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(-4, -10, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-3, -10, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -10, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -10, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -10, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -10, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -10, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(3, -10, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(9, -10, 16) voxel(walls=[1,1,1,1,0,0], grooves=[0,0,0,1]);
    v(-7, -9, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-6, -9, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-5, -9, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -9, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -9, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -9, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -9, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -9, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(2, -9, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-8, -8, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-7, -8, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-6, -8, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -8, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -8, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -8, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -8, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -8, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -8, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(1, -8, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-9, -7, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-8, -7, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-7, -7, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -7, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -7, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -7, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -7, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -7, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -7, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(0, -7, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-10, -6, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-9, -6, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-8, -6, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -6, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -6, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -6, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -6, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -6, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -6, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-1, -6, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-11, -5, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-10, -5, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-9, -5, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -5, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -5, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -5, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -5, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -5, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -5, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-2, -5, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-12, -4, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-11, -4, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-10, -4, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -4, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -4, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -4, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -4, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -4, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -4, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-3, -4, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-13, -3, 16) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-12, -3, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-11, -3, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, -3, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -3, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -3, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -3, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -3, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -3, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-4, -3, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-13, -2, 16) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-12, -2, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-11, -2, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, -2, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -2, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -2, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -2, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -2, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-5, -2, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-14, -1, 16) voxel(walls=[0,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-13, -1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-12, -1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-11, -1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, -1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, -1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, -1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-7, -1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-6, -1, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-14, 0, 16) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-13, 0, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-12, 0, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-11, 0, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-10, 0, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-9, 0, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-8, 0, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-7, 0, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-14, 1, 16) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-13, 1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-12, 1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-11, 1, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-10, 1, 16) voxel(walls=[0,0,1,0,0,0], grooves=[1,0,1,0]);
    v(-9, 1, 16) voxel(walls=[0,0,1,0,0,0], grooves=[1,0,1,0]);
    v(-8, 1, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-13, 2, 16) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,0,1]);
    v(-12, 2, 16) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(-11, 2, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-13, 3, 16) voxel(walls=[0,0,0,1,0,0], grooves=[0,1,1,1]);
    v(-12, 3, 16) voxel(walls=[0,1,1,0,0,0], grooves=[1,0,0,1]);
    v(-13, 4, 16) voxel(walls=[1,1,0,1,0,0], grooves=[0,1,0,1]);
    v(-13, 5, 16) voxel(walls=[1,1,0,1,0,0], grooves=[0,1,0,1]);
    v(-13, 6, 16) voxel(walls=[1,1,0,1,0,0], grooves=[0,1,0,1]);
    v(-11, 6, 16) voxel(walls=[1,1,0,1,1,0], grooves=[0,1,0,0]);
    v(-13, 7, 16) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-12, 7, 16) voxel(walls=[1,0,1,0,1,0], grooves=[1,0,1,0]);
    v(-11, 7, 16) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
}

}
  
module backPart() {
  
// Main model
translate([0,0, 46])rotate([180,0,0]) union() {
    v(-7, -11, 13) voxel(walls=[1,0,1,1,1,0], grooves=[0,0,0,0]);
    v(-6, -11, 13) voxel(walls=[1,1,1,0,1,0], grooves=[0,0,0,0]);
    v(-5, -10, 13) voxel(walls=[1,1,1,1,1,0], grooves=[0,0,0,0]);
    v(-4, -9, 13) voxel(walls=[1,0,1,1,1,0], grooves=[0,0,0,0]);
    v(-3, -9, 13) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-3, -8, 13) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-2, -8, 13) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -7, 13) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-1, -7, 13) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-1, -6, 13) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(0, -6, 13) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(0, -5, 13) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(1, -5, 13) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(1, -4, 13) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(2, -4, 13) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(2, -3, 13) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(3, -3, 13) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(4, -3, 13) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(3, -2, 13) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(4, -2, 13) voxel(walls=[1,0,1,0,0,0], grooves=[0,0,0,0]);
    v(5, -2, 13) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(5, -1, 13) voxel(walls=[1,1,1,1,0,0], grooves=[0,0,0,0]);
    v(-10, -12, 14) voxel(walls=[1,0,1,1,1,0], grooves=[0,0,0,0]);
    v(-9, -12, 14) voxel(walls=[1,0,1,0,1,0], grooves=[0,0,0,0]);
    v(-8, -12, 14) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-7, -12, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-8, -11, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-7, -11, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -11, 14) voxel(walls=[0,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-5, -11, 14) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-4, -11, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-7, -10, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-6, -10, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -10, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -10, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -10, 14) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -10, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-6, -9, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-5, -9, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -9, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -9, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -9, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 14) voxel(walls=[1,0,0,0,1,0], grooves=[0,0,0,0]);
    v(0, -9, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-5, -8, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-4, -8, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -8, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -8, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -8, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -8, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -8, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-4, -7, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-3, -7, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -7, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -7, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -7, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -7, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -7, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-3, -6, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-2, -6, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -6, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -6, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -6, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -6, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -6, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-2, -5, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(-1, -5, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -5, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -5, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -5, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -5, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -5, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(-1, -4, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(0, -4, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -4, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -4, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -4, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -4, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -4, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(0, -3, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(1, -3, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -3, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -3, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -3, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -3, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, -3, 14) voxel(walls=[1,1,0,0,1,0], grooves=[0,0,0,0]);
    v(1, -2, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(2, -2, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -2, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -2, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -2, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, -2, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, -2, 14) voxel(walls=[1,1,1,0,1,0], grooves=[0,0,0,0]);
    v(2, -1, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(3, -1, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -1, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -1, 14) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, -1, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(8, -1, 14) voxel(walls=[1,1,0,1,1,0], grooves=[0,0,0,0]);
    v(3, 0, 14) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,0,0]);
    v(4, 0, 14) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 0, 14) voxel(walls=[1,1,1,0,0,0], grooves=[0,0,0,0]);
    v(8, 0, 14) voxel(walls=[1,1,1,1,0,0], grooves=[0,0,0,0]);
    v(4, 1, 14) voxel(walls=[1,1,1,1,0,0], grooves=[0,0,0,0]);
    v(6, 1, 14) voxel(walls=[1,0,1,1,1,0], grooves=[0,0,0,0]);
    v(7, 1, 14) voxel(walls=[1,1,1,0,1,0], grooves=[0,0,0,0]);
    v(-9, -13, 15) voxel(walls=[1,0,0,1,1,0], grooves=[0,1,1,0]);
    v(-8, -13, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-12, -12, 15) voxel(walls=[1,0,1,1,1,0], grooves=[0,0,1,0]);
    v(-11, -12, 15) voxel(walls=[1,0,1,0,1,0], grooves=[1,0,1,0]);
    v(-10, -12, 15) voxel(walls=[0,0,0,0,1,0], grooves=[1,1,1,0]);
    v(-9, -12, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,0,0,1]);
    v(-8, -12, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(-7, -12, 15) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(-6, -12, 15) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(-5, -12, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-13, -11, 15) voxel(walls=[1,1,1,1,1,0], grooves=[0,0,0,0]);
    v(-10, -11, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-9, -11, 15) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(-8, -11, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-7, -11, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-6, -11, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -11, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(-4, -11, 15) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(-3, -11, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-8, -10, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-7, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-6, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-5, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -10, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(-2, -10, 15) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(-1, -10, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-7, -9, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-6, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-5, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-4, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -9, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(0, -9, 15) voxel(walls=[0,0,0,0,1,0], grooves=[1,0,1,0]);
    v(1, -9, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-6, -8, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-5, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-4, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-3, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -8, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(2, -8, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-5, -7, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-4, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-3, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-2, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -7, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(3, -7, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-4, -6, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-3, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-2, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(-1, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -6, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(4, -6, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-3, -5, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-2, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(-1, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(0, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -5, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(5, -5, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-2, -4, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(-1, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(0, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(1, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -4, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(6, -4, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(-1, -3, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(0, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(1, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(2, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, -3, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(7, -3, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(0, -2, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(1, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(2, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(3, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, -2, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,1,1]);
    v(8, -2, 15) voxel(walls=[1,0,0,0,1,0], grooves=[1,0,1,0]);
    v(9, -2, 15) voxel(walls=[1,1,0,0,1,0], grooves=[1,1,0,0]);
    v(1, -1, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(2, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(3, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(4, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, -1, 15) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(8, -1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(9, -1, 15) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(2, 0, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(3, 0, 15) voxel(walls=[0,0,0,0,0,0], grooves=[1,1,0,0]);
    v(4, 0, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(5, 0, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(6, 0, 15) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, 0, 15) voxel(walls=[1,0,0,0,0,0], grooves=[0,0,0,0]);
    v(8, 0, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,1,1,0]);
    v(9, 0, 15) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
    v(3, 1, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(4, 1, 15) voxel(walls=[0,0,1,0,0,0], grooves=[1,0,1,0]);
    v(5, 1, 15) voxel(walls=[1,0,0,0,0,0], grooves=[1,1,0,0]);
    v(6, 1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(7, 1, 15) voxel(walls=[0,0,0,0,0,0], grooves=[0,0,0,0]);
    v(8, 1, 15) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(5, 2, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(6, 2, 15) voxel(walls=[1,0,1,0,0,0], grooves=[1,0,1,0]);
    v(7, 2, 15) voxel(walls=[1,0,0,0,0,0], grooves=[1,1,0,0]);
    v(8, 2, 15) voxel(walls=[1,1,0,0,0,0], grooves=[0,1,0,1]);
    v(7, 3, 15) voxel(walls=[1,0,1,1,0,0], grooves=[0,0,1,1]);
    v(8, 3, 15) voxel(walls=[1,1,1,0,0,0], grooves=[1,0,0,1]);
}

}
  
module ringPart() {
  
// Rings for connecting front and back parts
translate([0,0, -40])
union() {
    v(-9, -13, 15) ringCell(grooves=[0,1,1,0]);
    v(-8, -13, 15) ringCell(grooves=[1,1,0,0]);
    v(-12, -12, 15) ringCell(grooves=[0,0,1,0]);
    v(-11, -12, 15) ringCell(grooves=[1,0,1,0]);
    v(-10, -12, 15) ringCell(grooves=[1,1,1,0]);
    v(-9, -12, 15) ringCell(grooves=[1,0,0,1]);
    v(-8, -12, 15) ringCell(grooves=[0,0,1,1]);
    v(-7, -12, 15) ringCell(grooves=[1,0,1,0]);
    v(-6, -12, 15) ringCell(grooves=[1,0,1,0]);
    v(-5, -12, 15) ringCell(grooves=[1,1,0,0]);
    v(-10, -11, 15) ringCell(grooves=[0,0,1,1]);
    v(-9, -11, 15) ringCell(grooves=[1,0,1,0]);
    v(-8, -11, 15) ringCell(grooves=[1,1,0,0]);
    v(-5, -11, 15) ringCell(grooves=[0,0,1,1]);
    v(-4, -11, 15) ringCell(grooves=[1,0,1,0]);
    v(-3, -11, 15) ringCell(grooves=[1,1,0,0]);
    v(-8, -10, 15) ringCell(grooves=[0,0,1,1]);
    v(-7, -10, 15) ringCell(grooves=[1,1,0,0]);
    v(-3, -10, 15) ringCell(grooves=[0,0,1,1]);
    v(-2, -10, 15) ringCell(grooves=[1,0,1,0]);
    v(-1, -10, 15) ringCell(grooves=[1,1,0,0]);
    v(-7, -9, 15) ringCell(grooves=[0,0,1,1]);
    v(-6, -9, 15) ringCell(grooves=[1,1,0,0]);
    v(-1, -9, 15) ringCell(grooves=[0,0,1,1]);
    v(0, -9, 15) ringCell(grooves=[1,0,1,0]);
    v(1, -9, 15) ringCell(grooves=[1,1,0,0]);
    v(-6, -8, 15) ringCell(grooves=[0,0,1,1]);
    v(-5, -8, 15) ringCell(grooves=[1,1,0,0]);
    v(1, -8, 15) ringCell(grooves=[0,0,1,1]);
    v(2, -8, 15) ringCell(grooves=[1,1,0,0]);
    v(-5, -7, 15) ringCell(grooves=[0,0,1,1]);
    v(-4, -7, 15) ringCell(grooves=[1,1,0,0]);
    v(2, -7, 15) ringCell(grooves=[0,0,1,1]);
    v(3, -7, 15) ringCell(grooves=[1,1,0,0]);
    v(-4, -6, 15) ringCell(grooves=[0,0,1,1]);
    v(-3, -6, 15) ringCell(grooves=[1,1,0,0]);
    v(3, -6, 15) ringCell(grooves=[0,0,1,1]);
    v(4, -6, 15) ringCell(grooves=[1,1,0,0]);
    v(-3, -5, 15) ringCell(grooves=[0,0,1,1]);
    v(-2, -5, 15) ringCell(grooves=[1,1,0,0]);
    v(4, -5, 15) ringCell(grooves=[0,0,1,1]);
    v(5, -5, 15) ringCell(grooves=[1,1,0,0]);
    v(-2, -4, 15) ringCell(grooves=[0,0,1,1]);
    v(-1, -4, 15) ringCell(grooves=[1,1,0,0]);
    v(5, -4, 15) ringCell(grooves=[0,0,1,1]);
    v(6, -4, 15) ringCell(grooves=[1,1,0,0]);
    v(-1, -3, 15) ringCell(grooves=[0,0,1,1]);
    v(0, -3, 15) ringCell(grooves=[1,1,0,0]);
    v(6, -3, 15) ringCell(grooves=[0,0,1,1]);
    v(7, -3, 15) ringCell(grooves=[1,1,0,0]);
    v(0, -2, 15) ringCell(grooves=[0,0,1,1]);
    v(1, -2, 15) ringCell(grooves=[1,1,0,0]);
    v(7, -2, 15) ringCell(grooves=[0,0,1,1]);
    v(8, -2, 15) ringCell(grooves=[1,0,1,0]);
    v(9, -2, 15) ringCell(grooves=[1,1,0,0]);
    v(1, -1, 15) ringCell(grooves=[0,0,1,1]);
    v(2, -1, 15) ringCell(grooves=[1,1,0,0]);
    v(9, -1, 15) ringCell(grooves=[0,1,0,1]);
    v(2, 0, 15) ringCell(grooves=[0,0,1,1]);
    v(3, 0, 15) ringCell(grooves=[1,1,0,0]);
    v(8, 0, 15) ringCell(grooves=[0,1,1,0]);
    v(9, 0, 15) ringCell(grooves=[1,0,0,1]);
    v(3, 1, 15) ringCell(grooves=[0,0,1,1]);
    v(4, 1, 15) ringCell(grooves=[1,0,1,0]);
    v(5, 1, 15) ringCell(grooves=[1,1,0,0]);
    v(8, 1, 15) ringCell(grooves=[0,1,0,1]);
    v(5, 2, 15) ringCell(grooves=[0,0,1,1]);
    v(6, 2, 15) ringCell(grooves=[1,0,1,0]);
    v(7, 2, 15) ringCell(grooves=[1,1,0,0]);
    v(8, 2, 15) ringCell(grooves=[0,1,0,1]);
    v(7, 3, 15) ringCell(grooves=[0,0,1,1]);
    v(8, 3, 15) ringCell(grooves=[1,0,0,1]);
}

}
  
// Voxel utility modules
voxelSize = 10;
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
