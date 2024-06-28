// tests/shapes/test_rounded_cube.scad

use <../../lib/shapes/rounded_cube.scad>

module testRoundedCube() {
    translate([-20, 0, 0])
    shapeRoundedCube(size = [10, 10, 10], radius = 2);

    translate([20, 0, 0])
    shapeRoundedCube(size = [15, 15, 15], radius = 3);
}

// Run tests
testRoundedCube();
