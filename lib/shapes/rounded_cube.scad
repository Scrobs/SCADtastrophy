// lib/shapes/rounded_cube.scad

/**
 * Creates a rounded cube with the specified dimensions and radius.
 *
 * @param size Vector of 3 values for the x, y, and z dimensions of the cube.
 * @param radius The radius of the rounding.
 */
module shapeRoundedCube(size = [10, 10, 10], radius = 2) {
    minkowski() {
        cube(size - [radius*2, radius*2, radius*2]);
        sphere(radius);
    }
}
