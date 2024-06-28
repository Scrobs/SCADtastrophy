// lib/utilities/grid_generator.scad

/**
 * Generates a grid of lines.
 *
 * @param size Size of the grid.
 * @param spacing Spacing between lines.
 * @param thickness Line thickness.
 */
module generateGrid(size = 100, spacing = 10, thickness = 1) {
    for (i = [-size/2 : spacing : size/2]) {
        translate([i, -size/2, 0])
        cube([thickness, size, thickness], center = true);
        translate([-size/2, i, 0])
        cube([size, thickness, thickness], center = true);
    }
}
