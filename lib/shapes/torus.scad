// lib/shapes/torus.scad

/**
 * Creates a torus with the specified parameters.
 *
 * @param inner_radius The inner radius of the torus.
 * @param outer_radius The outer radius of the torus.
 * @param $fn The number of fragments (resolution).
 */
module shapeTorus(inner_radius = 5, outer_radius = 10, $fn = 100) {
    torus(inner_radius, outer_radius);
}

/**
 * Creates a torus shape.
 *
 * @param inner_radius The inner radius of the torus.
 * @param outer_radius The outer radius of the torus.
 * @param $fn The number of fragments (resolution).
 */
module torus(inner_radius, outer_radius, $fn = 100) {
    rotate_extrude($fn = $fn)
    translate([outer_radius, 0, 0])
    circle(r = inner_radius, $fn = $fn);
}
