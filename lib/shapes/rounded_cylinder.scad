// lib/shapes/rounded_cylinder.scad

/**
 * Creates a rounded cylinder with the specified height, diameter, and radius.
 *
 * @param height The height of the cylinder.
 * @param diameter The diameter of the cylinder.
 * @param radius The radius of the rounding.
 */
module shapeRoundedCylinder(height = 20, diameter = 10, radius = 2) {
    minkowski() {
        cylinder(h = height - radius*2, d = diameter - radius*2);
        sphere(radius);
    }
}
