// lib/shapes/cylinder.scad

/**
 * Creates a cylinder with the specified dimensions.
 *
 * @param height The height of the cylinder.
 * @param diameter The diameter of the cylinder.
 * @param center Boolean to center the cylinder at the origin.
 * @param $fn The number of fragments (resolution) to render the cylinder.
 */
module shapeCylinder(height = 20, diameter = 10, center = false, $fn = 100) {
    cylinder(h = height, d = diameter, center = center, $fn = $fn);
}
