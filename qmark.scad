include <BOSL2/std.scad>;
include <qmark-voxels.scad>;

voxelSize = 12;
wallThickness = 1.2;

voxels = qmarkVoxels;
sourceSize = qmarkSize;

$solidVoxels = false;

voxelFaceTextureHeight = 1;

outerSize = [sourceSize.x*voxelSize, sourceSize.y*voxelSize, sourceSize.z*voxelSize] + [wallThickness*2, wallThickness*2, wallThickness*2];

echo("Size in inches: ", [sourceSize.x*voxelSize/25.4, sourceSize.y*voxelSize/25.4, sourceSize.z*voxelSize/25.4]);

*render() back();
left(outerSize.x + 10) render() front();
* clipSimpleCorner();
* mount();
* mirror([0,1]) clipFancy();

* translate([14*voxelSize, 13*voxelSize, -2.1])
    color("orange")
    cylinder(d=1,h=24.1);



module mount() {
    ringHeight = 15;
    postDiameterTop = 35;
    postDiameterBottom = 38;
    wallThickness = 2;
    
    insertSize = [6.5, 16.5] - [.4, .4];
    insertDepth = 50;
    
    module basicShape() {
        translate([0, postDiameterBottom/2])
        cuboid([
            insertSize.y,
            insertDepth,
            insertSize.x,
        ], anchor=BOTTOM+FRONT, chamfer=2);
        
        
        // Bracket
        tube(
            id1=postDiameterBottom,
            id2=postDiameterTop,
            wall=wallThickness,
            h=ringHeight,
            anchor=BOTTOM
        );
    }
    
    basicShape();
    difference() {
        hull() intersection() {
            basicShape();
            translate([0, postDiameterBottom/2])
                linear_extrude(ringHeight)
                square([insertSize.y+4, 8], center=true);
        }
        
        cylinder(
            d1=postDiameterBottom+wallThickness,
            d2=postDiameterTop+wallThickness,
            h=ringHeight
        );
    }
}

module clipFancy() {
    voxelOuterSize = voxelSize + wallThickness*1.25;
    wallThickness = 1.4;
    
    position = [14, 13, 1];
    
    module clipShell() {
        render() translate([position.x*voxelSize, position.y*voxelSize, position.z*voxelSize])
            cuboid([
                voxelOuterSize,
                voxelOuterSize,
                voxelOuterSize*2
            ] + [
                wallThickness*2,
                wallThickness*2,
                wallThickness*2,
            ], chamfer=1);
    }
    

    rotate([-90,0,0])
    translate(-[position.x*voxelSize, position.y*voxelSize, position.z*voxelSize])
    difference() {
        color("red") clipShell();

        render() {
            minkowski() {
                intersection() {
                    render() union() {
                        $solidVoxels = true;
                        
                        mirror([0,0,1]) back();
                        translate([0,0,-voxelSize*1.5+wallThickness/2]) front();
                    }
                    
                    minkowski() {
                        clipShell();
                        cube(5, center=true);
                    }
                }
                cube(.25, center=true);
            }
        }
    }
    
    * union() {
            $solidVoxels = true;
            
            mirror([0,0,1]) back();
            translate([0,0,-voxelSize*1.5+wallThickness/2]) front();
        }
}

module clipSimpleCorner() {
    thickness = .5;
    
    voxelExtraSeparation = wallThickness * 1.25 + .4;
    
    rotate($preview ? [0,0] : [-90,0])
    difference() {
        cuboid([
            voxelSize+2 - wallThickness * 1.25,
            voxelSize+2 - wallThickness * 1.25,
            (voxelSize+voxelExtraSeparation) * 2,
        ] + [
            thickness,
            thickness,
            thickness*4
        ], anchor=BOTTOM+FRONT+LEFT, chamfer=1);
        
        translate([
            voxelSize/2 + .25 - wallThickness * 1.25,
            voxelSize/2 + .25 - wallThickness * 1.25,
            voxelSize/2 + voxelExtraSeparation + thickness
        ]) {
            hull() voxel();
            hull() translate([0,0,voxelSize+1]) voxel();
        }
    }
    
    * translate([0,0,thickness])
        color("orange")
        cylinder(d=1,h=24.1);
}

module voxelSolid(data) {
    for (z=[0:len(data)-1]) {
        layer = data[z];
        
        for (y=[0:len(layer)-1]) {
            row = layer[y];
            
            for (x=[0:len(row)-1]) {
                if (row[x])
                translate([
                    x * voxelSize,
                    y * voxelSize,
                    z * voxelSize,
                ]) voxel();
            }
        }
    }
}

module front() {
    layers=[2,3,4,5];

    for (z=layers)
        voxelLayer(z, bottomLayer=layers[0], topLayer=layers[len(layers)-1]);
}

module back() {
    intersection() {
        cylinder(r=1000, h=1000);
        
        translate([0,0,voxelSize*1.5 + wallThickness/2])
            mirror([0,0,1])
            difference() {
                union() {
                    voxelLayer(0, bottomLayer=-1, topLayer=-1);
                    voxelLayer(1, bottomLayer=0, topLayer=-1);
                    
                    // Bottom of layer 2, also
                    z=2;
                    for (x=[0:sourceSize.x-1], y=[0:sourceSize.y-1])
                        translate([x*voxelSize,y*voxelSize,z*voxelSize])
                        if (vox(x,y,z))
                        voxel([! vox(x, y, z-1)]);
                }
                                
                
                * render() minkowski() {
                    z=2;
                    render() for (x=[0:sourceSize.x-1], y=[0:sourceSize.y-1])
                        translate([x*voxelSize,y*voxelSize,z*voxelSize])
                        if (vox(x,y,z))
                        voxel([! vox(x, y, z-1)]);
                        
                    sphere(r=.3);
                }
            }
    }
}
    
module voxelLayer(
    z,
    bottomLayer=0,
    topLayer=sourceSize.z
) {
    for (x=[0:sourceSize.x-1], y=[0:sourceSize.y-1])
        translate([x*voxelSize,y*voxelSize,z*voxelSize])
        if (vox(x,y,z))
        voxel([
            // 0: floor
            z != bottomLayer && ! vox(x, y, z-1),
            // 1: right
            ! vox(x+1, y, z),
            // 2: up
            ! vox(x, y+1, z),
            // 3: left
            ! vox(x-1, y, z),
            // 4: down
            ! vox(x, y-1, z),
            // 5: ceiling
            z == topLayer || ! vox(x, y, z+1),
        ]);
}


module voxel(walls=[1,1,1,1,1,1]) {
    v2 = voxelSize/2;
    
    render(convexity=2) if ($solidVoxels) hull() {
        // 0: floor
        translate([0, 0, -v2]) rotate([0, 180]) voxelWall();
        // 1: right
        translate([v2, 0, 0]) rotate([0, 90]) voxelWall();
        // 2: up
        translate([0, v2, 0]) rotate([-90, 0]) voxelWall();
        // 3: left
        translate([-v2, 0, 0]) rotate([0, -90]) voxelWall();
        // 4: down
        translate([0, -v2, 0]) rotate([90, 0]) voxelWall();
        // 5: ceiling
        translate([0, 0, v2]) voxelWall();
    } else {
        // 0: floor
        if (walls[0]) color([0,0,1]) translate([0, 0, -v2]) rotate([0, 180]) voxelWall();
        // 1: right
        if (walls[1]) color([0,1,0]) translate([v2, 0, 0]) rotate([0, 90]) voxelWall();
        // 2: up
        if (walls[2]) color([0,1,1]) translate([0, v2, 0]) rotate([-90, 0]) voxelWall();
        // 3: left
        if (walls[3]) color([1,0,0]) translate([-v2, 0, 0]) rotate([0, -90]) voxelWall();
        // 4: down
        if (walls[4]) color([1,0,1]) translate([0, -v2, 0]) rotate([90, 0]) voxelWall();
        // 5: ceiling
        if (walls[5]) color([1,1,1]) translate([0, 0, v2]) voxelWall();
    }
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

function vox(x,y,z) = (
    x >= 0 && x < sourceSize.x &&
    y >= 0 && y < sourceSize.y &&
    z >= 0 && z < sourceSize.z
) ? voxels[z][sourceSize.y - 1 - y][x] : 0;

testVoxels = [
    [
        [1,1,1,1],
        [1,1,1,1],
        [1,1,1,1],
        [1,1,1,1],
    ],
    [
        [0,1,1,0],
        [1,1,1,1],
        [1,1,1,1],
        [0,1,1,0],
    ],
    [
        [0,0,0,0],
        [0,1,1,0],
        [0,1,1,0],
        [0,0,0,0],
    ],
];
