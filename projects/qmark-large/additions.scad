poleInnerDiameter = 17;//17.2;
poleOuterDiameter = 19.4; //19.2;

attachmentWallThickness = 5.25;
height = 50;

outerDiameter = 30;

echo("Screw length:", outerDiameter);

frontAdditions();
//backAdditions();

module frontAdditions(rotation=0) {
    translate([-5.5, 136 + height])
    intersection() {
        rotate([90, 0, 0])
            rotate(rotation) attachment();

        cylinder(d=1000, h=1000, $fn=4);
    }
}

module frontCutouts() {
    extra = 75;
    translate([-5.5, 136 + height/2])
        rotate([90, 0, 0])
        cylinder(d=poleInnerDiameter-2, h=height + extra);
}

module backAdditions() {
    frontAdditions(180);
}

module backCutouts() {
    frontCutouts();
}

module attachment() {
    difference() {
        linear_extrude(height, convexity=2) difference() {
            // Outer wall
            circle(d=outerDiameter);

            // Wire hole
            circle(d=poleOuterDiameter);
        }


        // Screw and nut
        for(z=[10, height - 12])
            translate([0, outerDiameter/2, z])
            rotate([90, 0])
            m5ScrewAndNut(length=outerDiameter);
    }
}

module m6ScrewAndNut(length=20, tolerance=.1) {
    // https://www.mcmaster.com/90236a161/
    screwDiameter = 6 ;
    headDiameter = 11.3;
    headHeight = 3.3;

    // Nut from https://www.mcmaster.com/91415A210/
    nutHeight = 5;
    nutFlatWidth = 10;
    nutDiameter = nutFlatWidth / cos(30); // Convert flat-to-flat to circumscribed diameter

    cylinder(d=nutDiameter + tolerance*2, h=nutHeight+tolerance, $fn=6);
    cylinder(d=screwDiameter + tolerance*2, h=length);
    translate([0, 0, length - headHeight - tolerance])
        cylinder(d1=screwDiameter + tolerance*2, d2=headDiameter + tolerance*2, h=headHeight+tolerance*2);
}

module m5ScrewAndNut(length=20, tolerance=.1) {
    // https://www.mcmaster.com/92125A216/
    screwDiameter = 5 ;
    headDiameter = 10;
    headHeight = 2.8;

    // Nut from https://www.mcmaster.com/91828A241/
    nutHeight = 4;
    nutFlatWidth = 8;
    nutDiameter = nutFlatWidth / cos(30); // Convert flat-to-flat to circumscribed diameter

    cylinder(d=nutDiameter + tolerance*2, h=nutHeight+tolerance, $fn=6);
    cylinder(d=screwDiameter + tolerance*2, h=length);
    translate([0, 0, length - headHeight - tolerance])
        cylinder(d1=screwDiameter + tolerance*2, d2=headDiameter + tolerance*2, h=headHeight+tolerance*2);
}
