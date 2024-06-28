// tests/shapes/test_rounded_cylinder.scad

use <../../lib/shapes/rounded_cylinder.scad>

module testRoundedCylinder() {
    translate([-20, 0, 0])
    shapeRoundedCylinder(height = 20, diameter = 10, radius = 2);

    translate([20, 0, 0])
    shapeRoundedCylinder(height = 30, diameter = 15, radius = 3);
}

// Run tests
testRoundedCylinder();
