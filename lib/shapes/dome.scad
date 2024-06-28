// lib/shapes/dome.scad

/**
 * Creates a dome with the specified parameters.
 *
 * @param radius The radius of the dome.
 * @param height The height of the dome (typically half the radius for a hemisphere).
 * @param $fn The number of fragments (resolution).
 */
module shapeDome(radius = 10, height = 10, $fn = 100) {
    difference() {
        // Full sphere
        sphere(r = radius, $fn = $fn);
        // Cut the bottom half
        translate([0, 0, -radius])
        cube([2*radius, 2*radius, radius], center=true);
    }
}
