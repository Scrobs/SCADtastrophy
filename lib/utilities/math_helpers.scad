// lib/utilities/math_helpers.scad

/**
 * Calculates the distance between two points.
 *
 * @param p1 First point [x, y, z].
 * @param p2 Second point [x, y, z].
 * @return Distance between p1 and p2.
 */
function distance(p1, p2) =
    sqrt(pow(p2[0] - p1[0], 2) + pow(p2[1] - p1[1], 2) + pow(p2[2] - p1[2], 2));

/**
 * Calculates the angle between two vectors.
 *
 * @param v1 First vector [x, y, z].
 * @param v2 Second vector [x, y, z].
 * @return Angle between v1 and v2 in degrees.
 */
function angleBetween(v1, v2) =
    acos(dot(v1, v2) / (norm(v1) * norm(v2))) * (180 / PI);
