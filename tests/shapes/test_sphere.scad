// tests/shapes/test_sphere.scad

use <../../lib/shapes/sphere.scad>

module testSphere() {
    translate([-20, 0, 0])
    shapeSphere(radius = 10);

    translate([20, 0, 0])
    shapeSphere(radius = 15, $fn = 50);
}

// Run tests
testSphere();
