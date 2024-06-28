// lib/shapes/sphere.scad

/**
 * Creates a sphere with the specified radius.
 *
 * @param radius The radius of the sphere.
 * @param $fn The number of fragments (resolution) to render the sphere.
 */
module shapeSphere(radius = 10, $fn = 100) {
    sphere(r = radius, $fn = $fn);
}
