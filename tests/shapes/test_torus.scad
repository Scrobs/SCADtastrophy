// tests/shapes/test_torus.scad

use <../../lib/shapes/torus.scad>

module testTorus() {
    translate([-30, 0, 0])
    shapeTorus(inner_radius = 5, outer_radius = 10);

    translate([30, 0, 0])
    shapeTorus(inner_radius = 10, outer_radius = 20, $fn = 50);
}

// Run tests
testTorus();
