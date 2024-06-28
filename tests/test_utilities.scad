// tests/utilities/test_all_utilities.scad

use <../../lib/utilities/color_utils.scad>
use <../../lib/utilities/grid_generator.scad>
use <../../lib/utilities/math_helpers.scad>
use <../../lib/utilities/transform_rotate.scad>
use <../../lib/utilities/array_utils.scad>
use <../../lib/utilities/bounding_box_utils.scad>
use <../../lib/utilities/noise_utils.scad>
use <../../lib/utilities/text_utils.scad>

module testAllUtilities() {
    // Test Color Utilities
    testColorUtils();
    
    // Test Grid Generator
    translate([0, -100, 0])
    testGridGenerator();

    // Test Math Helpers
    testMathHelpers();

    // Test Transform Rotate
    translate([0, 100, 0])
    testTransformRotate();

    // Test Array Utilities
    translate([0, -200, 0])
    testArrayUtils();

    // Test Bounding Box Utilities
    translate([100, 0, 0])
    testBoundingBoxUtils();

    // Test Noise Functions
    translate([200, 0, 0])
    testNoiseUtils();

    // Test Text Utilities
    translate([300, 0, 0])
    testTextUtils();
}

module testColorUtils() {
    // Test Lighten
    color(lighten([1, 0, 0], 0.5))
    translate([-30, 0, 0])
    cube([10, 10, 10]);

    // Test Darken
    color(darken([1, 0, 0], 0.5))
    translate([0, 0, 0])
    cube([10, 10, 10]);
    
    // Test Apply Color with Transparency
    applyColor([0, 1, 0], 0.5)
    translate([30, 0, 0])
    sphere(5);
}

module testGridGenerator() {
    generateGrid(size = 50, spacing = 5, thickness = 0.5);
}

module testMathHelpers() {
    // Test Distance
    echo("Distance between [0, 0, 0] and [1, 1, 1]: ", distance([0, 0, 0], [1, 1, 1]));  // Should print 1.732
    
    // Test Angle Between
    echo("Angle between [1, 0, 0] and [0, 1, 0]: ", angleBetween([1, 0, 0], [0, 1, 0]));  // Should print 90
}

module testTransformRotate() {
    translate([-30, 0, 0])
    rotateX(45)
    cube([10, 10, 10]);

    translate([0, 0, 0])
    rotateY(45)
    cube([10, 10, 10]);

    translate([30, 0, 0])
    rotateZ(45)
    cube([10, 10, 10]);
}

module testArrayUtils() {
    // Test Linear Array
    linearArray(5, 15)
    cube([10, 10, 10]);
    
    // Test Circular Array
    translate([100, 0, 0])
    circularArray(8, 30)
    sphere(5);
    
    // Test Grid Array
    translate([0, -100, 0])
    gridArray(3, 3, 20)
    cylinder(h = 10, r = 5);
}

module testBoundingBoxUtils() {
    // Manually specified bounding box for the cube
    withBoundingBox([0, 0, 0], [20, 30, 40])
    cube([20, 30, 40]);
    
    // Manually specified bounding box for the sphere
    translate([50, 0, 0])
    fitToBoundingBox([20, 20, 20], [-15, -15, -15], [15, 15, 15])
    sphere(15);
}

module testNoiseUtils() {
    // Since OpenSCAD does not support Perlin noise natively, we just echo the function call
    echo("Perlin Noise at [0,0,0]: ", perlinNoise(0, 0, 0));
}

module testTextUtils() {
    // Test Extrude Text
    extrudeText("Hello", 5, 10);

    // Test Align Text
    translate([50, 0, 0])
    alignText("World", 10, [50, 10, 5], "center");
}

testAllUtilities();
