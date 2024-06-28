// lib/shapes/pyramid.scad

/**
 * Creates a pyramid with the specified base dimensions and height.
 *
 * @param base_length The length of the base of the pyramid.
 * @param base_width The width of the base of the pyramid.
 * @param height The height of the pyramid.
 */
module shapePyramid(base_length = 10, base_width = 10, height = 20) {
    polyhedron(
        points=[
            [0, 0, 0],
            [base_length, 0, 0],
            [base_length, base_width, 0],
            [0, base_width, 0],
            [base_length/2, base_width/2, height]
        ],
        faces=[
            [0, 1, 4],
            [1, 2, 4],
            [2, 3, 4],
            [3, 0, 4],
            [0, 1, 2, 3]
        ]
    );
}
