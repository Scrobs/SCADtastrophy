// tests/shapes/test_hexagon.scad

use <../../lib/shapes/hexagon.scad>

module testHexagon() {
    translate([-20, 0, 0])
    shapeHexagon(side_length = 10, height = 10);

    translate([20, 0, 0])
    shapeHexagon(side_length = 15, height = 15);
}

// Run tests
testHexagon();
