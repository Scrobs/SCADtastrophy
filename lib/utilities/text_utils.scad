// lib/utilities/text_utils.scad

/**
 * Extrudes text to create a 3D text object.
 *
 * @param txt Text to extrude.
 * @param height Extrusion height.
 * @param size Font size.
 * @param font Font name.
 */
module extrudeText(txt, height, size = 10, font = "Arial") {
    linear_extrude(height) {
        text(txt, size = size, font = font);
    }
}

/**
 * Aligns text within a bounding box.
 *
 * @param txt Text to align.
 * @param size Font size.
 * @param box_size Bounding box size [x, y, z].
 * @param align Alignment ('left', 'center', 'right').
 */
module alignText(txt, size = 10, box_size = [50, 10, 1], align = "center") {
    x_shift = align == "left" ? 0 : align == "right" ? box_size[0] - textMetrics(txt, size)[0] : (box_size[0] - textMetrics(txt, size)[0]) / 2;
    translate([x_shift, 0, 0])
    extrudeText(txt, box_size[2], size);
}

/**
 * Gets the dimensions of a text object.
 *
 * @param txt Text to measure.
 * @param size Font size.
 * @return List of dimensions [width, height].
 */
function textMetrics(txt, size = 10) = 
    let(b = [textWidth(txt, size), textHeight(txt, size)]) [b[0], b[1]];

/**
 * Returns the width of the text based on character count and size.
 *
 * @param txt Text to measure.
 * @param size Font size.
 * @return Text width.
 */
function textWidth(txt, size) = len(txt) * size * 0.6;  // Approximate width calculation

/**
 * Returns the height of the text based on font size.
 *
 * @param txt Text to measure.
 * @param size Font size.
 * @return Text height.
 */
function textHeight(txt, size) = size;  // Simple height calculation
