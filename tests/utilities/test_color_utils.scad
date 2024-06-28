// tests/utilities/test_color_utils.scad

use <../../lib/utilities/color_utils.scad>

module testColorUtils() {
    // Test Lighten
    color(lighten([1, 0, 0], 0.5))
    translate([-30, 0, 0])
    cube([10, 10, 10]);

    // Test Darken
    color(darken([1, 0, 0], 0.5))
    translate([0, 0, 0])
    cube([10, 10, 10]);
    
    // Test Apply Color with Transparency
    applyColor([0, 1, 0], 0.5)
    translate([30, 0, 0])
    sphere(5);
}

testColorUtils();
