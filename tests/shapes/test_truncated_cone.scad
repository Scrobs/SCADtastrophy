// tests/shapes/test_truncated_cone.scad

use <../../lib/shapes/truncated_cone.scad>

module testTruncatedCone() {
    translate([-20, 0, 0])
    shapeTruncatedCone(base_radius = 10, top_radius = 5, height = 20);

    translate([20, 0, 0])
    shapeTruncatedCone(base_radius = 15, top_radius = 8, height = 30);
}

// Run tests
testTruncatedCone();
