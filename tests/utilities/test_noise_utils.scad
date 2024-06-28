// tests/utilities/test_noise_utils.scad

use <../../lib/utilities/noise_utils.scad>

/**
 * Module to test Perlin noise generation.
 */
module testNoiseUtils() {
    // Test Perlin Noise
    for (x = [0:10]) {
        for (y = [0:10]) {
            z = perlinNoise(x / 5, y / 5, 0);
            translate([x * 10, y * 10, z * 50])
            sphere(1);
        }
    }
}

testNoiseUtils();
