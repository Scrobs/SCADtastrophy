// tests/shapes/test_cylinder.scad

use <../../lib/shapes/cylinder.scad>

module testCylinder() {
    translate([-20, 0, 0])
    shapeCylinder(height = 20, diameter = 10);

    translate([20, 0, 0])
    shapeCylinder(height = 30, diameter = 20, center = true);
}

// Run tests
testCylinder();
