// lib/shapes/ellipsoid.scad

/**
 * Creates an ellipsoid with the specified radii.
 *
 * @param radius_x The radius along the x-axis.
 * @param radius_y The radius along the y-axis.
 * @param radius_z The radius along the z-axis.
 * @param $fn The number of fragments (resolution) to render the ellipsoid.
 */
module shapeEllipsoid(radius_x = 10, radius_y = 20, radius_z = 30, $fn = 100) {
    scale([radius_x, radius_y, radius_z])
    sphere(1, $fn = $fn);
}
