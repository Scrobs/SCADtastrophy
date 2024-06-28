// lib/shapes/cube.scad

/**
 * Creates a cube with the specified dimensions.
 *
 * @param size Vector of 3 values for the x, y, and z dimensions of the cube.
 * @param center Boolean to center the cube at the origin.
 */
module shapeCube(size = [10, 10, 10], center = false) {
    cube(size, center);
}
