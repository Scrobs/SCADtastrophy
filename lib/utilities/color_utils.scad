// lib/utilities/color_utils.scad

/**
 * Applies a color to an object with optional transparency.
 *
 * @param color Color to apply.
 * @param alpha Transparency (0-1).
 */
module applyColor(color, alpha = 1) {
    color([color[0], color[1], color[2], alpha])
    children();
}

/**
 * Lightens a given color.
 *
 * @param color Color to lighten.
 * @param amount Amount to lighten (0-1).
 * @return Lightened color.
 */
function lighten(color, amount) =
    [color[0] + (1 - color[0]) * amount, color[1] + (1 - color[1]) * amount, color[2] + (1 - color[2]) * amount];

/**
 * Darkens a given color.
 *
 * @param color Color to darken.
 * @param amount Amount to darken (0-1).
 * @return Darkened color.
 */
function darken(color, amount) =
    [color[0] * (1 - amount), color[1] * (1 - amount), color[2] * (1 - amount)];
