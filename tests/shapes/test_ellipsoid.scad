// tests/shapes/test_ellipsoid.scad

use <../../lib/shapes/ellipsoid.scad>

module testEllipsoid() {
    translate([-20, 0, 0])
    shapeEllipsoid(radius_x = 10, radius_y = 15, radius_z = 20);

    translate([20, 0, 0])
    shapeEllipsoid(radius_x = 15, radius_y = 20, radius_z = 25);
}

// Run tests
testEllipsoid();
