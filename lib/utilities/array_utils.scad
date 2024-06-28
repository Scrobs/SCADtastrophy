// lib/utilities/array_utils.scad

/**
 * Creates a linear array of an object.
 *
 * @param count Number of objects.
 * @param spacing Spacing between objects.
 */
module linearArray(count, spacing) {
    for (i = [0:count-1]) {
        translate([i * spacing, 0, 0])
        children();
    }
}

/**
 * Creates a circular array of an object.
 *
 * @param count Number of objects.
 * @param radius Radius of the circle.
 */
module circularArray(count, radius) {
    for (i = [0:count-1]) {
        rotate([0, 0, i * 360 / count])
        translate([radius, 0, 0])
        children();
    }
}

/**
 * Creates a grid array of an object.
 *
 * @param rows Number of rows.
 * @param cols Number of columns.
 * @param spacing Spacing between objects.
 */
module gridArray(rows, cols, spacing) {
    for (i = [0:rows-1]) {
        for (j = [0:cols-1]) {
            translate([i * spacing, j * spacing, 0])
            children();
        }
    }
}
