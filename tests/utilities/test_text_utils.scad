// tests/utilities/test_text_utils.scad

use <../../lib/utilities/text_utils.scad>

module testTextUtils() {
    // Test Extrude Text
    extrudeText("Hello", 5, 10);

    // Test Align Text
    translate([50, 0, 0])
    alignText("World", 10, [50, 10, 5], "center");
}

testTextUtils();
