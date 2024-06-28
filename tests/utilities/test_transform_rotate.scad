// tests/utilities/test_transform_rotate.scad

use <../../lib/utilities/transform_rotate.scad>

module testTransformRotate() {
    translate([-30, 0, 0])
    rotateX(45)
    cube([10, 10, 10]);

    translate([0, 0, 0])
    rotateY(45)
    cube([10, 10, 10]);

    translate([30, 0, 0])
    rotateZ(45)
    cube([10, 10, 10]);
}

testTransformRotate();
