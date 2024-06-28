// tests/shapes/test_dome.scad

use <../../lib/shapes/dome.scad>

module testDome() {
    translate([-20, 0, 0])
    shapeDome(radius = 10, height = 10);

    translate([20, 0, 0])
    shapeDome(radius = 15, height = 15);
}

// Run tests
testDome();
