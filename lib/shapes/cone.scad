// lib/shapes/cone.scad

/**
 * Creates a cone with the specified height and base radius.
 *
 * @param height The height of the cone.
 * @param base_radius The radius of the base of the cone.
 * @param top_radius The radius of the top of the cone.
 * @param center Boolean to center the cone at the origin.
 * @param $fn The number of fragments (resolution) to render the cone.
 */
module shapeCone(height = 20, base_radius = 10, top_radius = 0, center = false, $fn = 100) {
    cylinder(h = height, r1 = base_radius, r2 = top_radius, center = center, $fn = $fn);
}
