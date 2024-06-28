// lib/shapes/truncated_cone.scad

/**
 * Creates a truncated cone with the specified base and top radii and height.
 *
 * @param base_radius The radius of the base of the cone.
 * @param top_radius The radius of the top of the cone.
 * @param height The height of the cone.
 * @param $fn The number of fragments (resolution) to render the cone.
 */
module shapeTruncatedCone(base_radius = 10, top_radius = 5, height = 20, $fn = 100) {
    cylinder(r1 = base_radius, r2 = top_radius, h = height, $fn = $fn);
}
