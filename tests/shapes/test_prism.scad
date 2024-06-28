// tests/shapes/test_prism.scad

use <../../lib/shapes/prism.scad>

module testPrism() {
    translate([-20, 0, 0])
    shapePrism(side_length = 10, height = 20);

    translate([20, 0, 0])
    shapePrism(side_length = 15, height = 30);
}

// Run tests
testPrism();
