// tests/utilities/test_array_utils.scad

use <../../lib/utilities/array_utils.scad>

module testArrayUtils() {
    // Test Linear Array
    linearArray(5, 15)
    cube([10, 10, 10]);
    
    // Test Circular Array
    translate([100, 0, 0])
    circularArray(8, 30)
    sphere(5);
    
    // Test Grid Array
    translate([0, -100, 0])
    gridArray(3, 3, 20)
    cylinder(h = 10, r = 5);
}

testArrayUtils();
