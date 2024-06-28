// lib/shapes/hexagon.scad

/**
 * Creates a hexagon with the specified side length and height.
 *
 * @param side_length The length of each side of the hexagon.
 * @param height The height of the hexagon.
 */
module shapeHexagon(side_length = 10, height = 10) {
    linear_extrude(height = height)
    polygon(points = [
        [cos(0) * side_length, sin(0) * side_length],
        [cos(60) * side_length, sin(60) * side_length],
        [cos(120) * side_length, sin(120) * side_length],
        [cos(180) * side_length, sin(180) * side_length],
        [cos(240) * side_length, sin(240) * side_length],
        [cos(300) * side_length, sin(300) * side_length]
    ]);
}
