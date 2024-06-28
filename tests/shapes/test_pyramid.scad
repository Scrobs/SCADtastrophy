// tests/shapes/test_pyramid.scad

use <../../lib/shapes/pyramid.scad>

module testPyramid() {
    translate([-20, 0, 0])
    shapePyramid(base_length = 10, base_width = 10, height = 20);

    translate([20, 0, 0])
    shapePyramid(base_length = 15, base_width = 15, height = 30);
}

// Run tests
testPyramid();
