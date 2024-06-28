// tests/test_shapes.scad

use <../lib/shapes/cube.scad>
use <../lib/shapes/sphere.scad>
use <../lib/shapes/cylinder.scad>
use <../lib/shapes/torus.scad>
use <../lib/shapes/cone.scad>
use <../lib/shapes/truncated_cone.scad>
use <../lib/shapes/pyramid.scad>
use <../lib/shapes/ellipsoid.scad>
use <../lib/shapes/prism.scad>
use <../lib/shapes/dome.scad>
use <../lib/shapes/star.scad>
use <../lib/shapes/wedge.scad>
use <../lib/shapes/hexagon.scad>
use <../lib/shapes/rounded_cube.scad>
use <../lib/shapes/rounded_cylinder.scad>

// Test shapeCube module
module testShapeCube() {
    translate([-150, 0, 0])
    shapeCube(size = [10, 10, 10]);
    
    translate([-60, 0, 0])
    shapeCube(size = [10, 20, 30], center = true);

    translate([30, 0, 0])
    shapeCube(size = [20, 20, 20], center = false);
}

// Test shapeSphere module
module testShapeSphere() {
    translate([-150, -90, 0])
    shapeSphere(radius = 10);
    
    translate([-60, -90, 0])
    shapeSphere(radius = 15, $fn = 50);

    translate([30, -90, 0])
    shapeSphere(radius = 20, $fn = 200);
}

// Test shapeCylinder module
module testShapeCylinder() {
    translate([-150, -180, 0])
    shapeCylinder(height = 20, diameter = 10);
    
    translate([-60, -180, 0])
    shapeCylinder(height = 30, diameter = 20, center = true);

    translate([30, -180, 0])
    shapeCylinder(height = 40, diameter = 15, center = false, $fn = 50);
}

// Test shapeTorus module
module testShapeTorus() {
    translate([-150, -270, 0])
    shapeTorus(inner_radius = 5, outer_radius = 10);
    
    translate([-60, -270, 0])
    shapeTorus(inner_radius = 10, outer_radius = 20, $fn = 50);

    translate([30, -270, 0])
    shapeTorus(inner_radius = 15, outer_radius = 30, $fn = 200);
}

// Test shapeCone module
module testShapeCone() {
    translate([-150, -360, 0])
    shapeCone(height = 20, base_radius = 10);
    
    translate([-60, -360, 0])
    shapeCone(height = 30, base_radius = 15, top_radius = 5, center = true);

    translate([30, -360, 0])
    shapeCone(height = 40, base_radius = 20, top_radius = 10, center = false, $fn = 50);
}

// Test shapeTruncatedCone module
module testShapeTruncatedCone() {
    translate([-150, -450, 0])
    shapeTruncatedCone(base_radius = 10, top_radius = 5, height = 20);
    
    translate([-60, -450, 0])
    shapeTruncatedCone(base_radius = 15, top_radius = 8, height = 30);

    translate([30, -450, 0])
    shapeTruncatedCone(base_radius = 20, top_radius = 10, height = 40);
}

// Test shapePyramid module
module testShapePyramid() {
    translate([-150, -540, 0])
    shapePyramid(base_length = 10, base_width = 10, height = 20);
    
    translate([-60, -540, 0])
    shapePyramid(base_length = 15, base_width = 15, height = 30);

    translate([30, -540, 0])
    shapePyramid(base_length = 20, base_width = 20, height = 40);
}

// Test shapeEllipsoid module
module testShapeEllipsoid() {
    translate([-150, -630, 0])
    shapeEllipsoid(radius_x = 10, radius_y = 15, radius_z = 20);
    
    translate([-60, -630, 0])
    shapeEllipsoid(radius_x = 15, radius_y = 20, radius_z = 25);

    translate([30, -630, 0])
    shapeEllipsoid(radius_x = 20, radius_y = 25, radius_z = 30);
}

// Test shapePrism module
module testShapePrism() {
    translate([-150, -720, 0])
    shapePrism(side_length = 10, height = 20);
    
    translate([-60, -720, 0])
    shapePrism(side_length = 15, height = 30);

    translate([30, -720, 0])
    shapePrism(side_length = 20, height = 40);
}

// Test shapeDome module
module testShapeDome() {
    translate([-150, -810, 0])
    shapeDome(radius = 10, height = 20);
    
    translate([-60, -810, 0])
    shapeDome(radius = 15, height = 30);

    translate([30, -810, 0])
    shapeDome(radius = 20, height = 40);
}

// Test shapeHexagon module
module testShapeHexagon() {
    translate([-150, -1080, 0])
    shapeHexagon(side_length = 10, height = 10);
    
    translate([-60, -1080, 0])
    shapeHexagon(side_length = 15, height = 15);

    translate([30, -1080, 0])
    shapeHexagon(side_length = 20, height = 20);
}

// Test shapeRoundedCube module
module testShapeRoundedCube() {
    translate([-150, -1170, 0])
    shapeRoundedCube(size = [10, 10, 10], radius = 2);
    
    translate([-60, -1170, 0])
    shapeRoundedCube(size = [15, 15, 15], radius = 3);

    translate([30, -1170, 0])
    shapeRoundedCube(size = [20, 20, 20], radius = 4);
}

// Test shapeRoundedCylinder module
module testShapeRoundedCylinder() {
    translate([-150, -1260, 0])
    shapeRoundedCylinder(height = 20, diameter = 10, radius = 2);
    
    translate([-60, -1260, 0])
    shapeRoundedCylinder(height = 30, diameter = 15, radius = 3);

    translate([30, -1260, 0])
    shapeRoundedCylinder(height = 40, diameter = 20, radius = 4);
}

// Combine all tests
module testAllShapes() {
    testShapeCube();
    testShapeSphere();
    testShapeCylinder();
    testShapeTorus();
    testShapeCone();
    testShapeTruncatedCone();
    testShapePyramid();
    testShapeEllipsoid();
    testShapePrism();
    testShapeDome();
    testShapeHexagon();
    testShapeRoundedCube();
    testShapeRoundedCylinder();
}

// Run all tests
testAllShapes();
