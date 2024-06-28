// tests/shapes/test_cube.scad

use <../../lib/shapes/cube.scad>

module testCube() {
    translate([-20, 0, 0])
    shapeCube(size = [10, 10, 10]);

    translate([20, 0, 0])
    shapeCube(size = [10, 20, 30], center = true);
}

// Run tests
testCube();
