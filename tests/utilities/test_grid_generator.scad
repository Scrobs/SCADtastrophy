// tests/utilities/test_grid_generator.scad

use <../../lib/utilities/grid_generator.scad>

module testGridGenerator() {
    generateGrid(size = 50, spacing = 5, thickness = 0.5);
}

testGridGenerator();
