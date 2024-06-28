// tests/utilities/test_math_helpers.scad

use <../../lib/utilities/math_helpers.scad>

module testMathHelpers() {
    // Test Distance
    echo("Distance between [0, 0, 0] and [1, 1, 1]: ", distance([0, 0, 0], [1, 1, 1]));  // Should print 1.732
    
    // Test Angle Between
    echo("Angle between [1, 0, 0] and [0, 1, 0]: ", angleBetween([1, 0, 0], [0, 1, 0]));  // Should print 90
}

testMathHelpers();
