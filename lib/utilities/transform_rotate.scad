// lib/utilities/transform_rotate.scad

/**
 * Rotates an object around the x-axis.
 *
 * @param angle Angle to rotate in degrees.
 */
module rotateX(angle) {
    rotate([angle, 0, 0])
    children();
}

/**
 * Rotates an object around the y-axis.
 *
 * @param angle Angle to rotate in degrees.
 */
module rotateY(angle) {
    rotate([0, angle, 0])
    children();
}

/**
 * Rotates an object around the z-axis.
 *
 * @param angle Angle to rotate in degrees.
 */
module rotateZ(angle) {
    rotate([0, 0, angle])
    children();
}
