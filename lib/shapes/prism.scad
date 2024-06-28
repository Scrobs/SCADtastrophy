// lib/shapes/prism.scad

/**
 * Creates a prism with the specified base side length and height.
 *
 * @param side_length The length of each side of the base.
 * @param height The height of the prism.
 */
module shapePrism(side_length = 10, height = 20) {
    base_points = [
        [0, 0],
        [side_length, 0],
        [side_length / 2, side_length * sqrt(3) / 2]
    ];
    linear_extrude(height = height)
        polygon(points = base_points);
}
