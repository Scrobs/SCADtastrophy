// tests/utilities/test_bounding_box_utils.scad

use <../../lib/utilities/bounding_box_utils.scad>

module testBoundingBoxUtils() {
    // Original cube size is [20, 30, 40]
    cube_size = [20, 30, 40];
    cube([20, 30, 40]);
    
    // Fit the sphere to the bounding box of [20, 20, 20]
    translate([50, 0, 0])
    fitToBoundingBox([20, 20, 20], [30, 30, 30])
    sphere(15);
}

testBoundingBoxUtils();
