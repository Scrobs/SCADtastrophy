// tests/shapes/test_cone.scad

use <../../lib/shapes/cone.scad>

module testCone() {
    translate([-20, 0, 0])
    shapeCone(height = 20, base_radius = 10);

    translate([20, 0, 0])
    shapeCone(height = 30, base_radius = 15, top_radius = 5, center = true);
}

// Run tests
testCone();
