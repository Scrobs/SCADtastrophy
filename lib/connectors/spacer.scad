/**
 * Creates a spacer with specified parameters including flanges and steps.
 *
 * @param outer_diameter The outer diameter of the spacer.
 * @param inner_diameter The inner diameter of the spacer.
 * @param height The height of the spacer.
 * @param flange Boolean to add flanges to the ends.
 * @param step Boolean to add steps to the spacer.
 * @param chamfer The chamfer at the edges of the spacer.
 * @param $fn The number of fragments (resolution) to render the spacer.
 */
module conSpacer(outer_diameter = 10, inner_diameter = 5, height = 20, flange = false, step = false, chamfer = 1, $fn = 100) {
    difference() {
        // Outer cylinder
        cylinder(d = outer_diameter, h = height, $fn = $fn);
        
        // Inner hole
        translate([0, 0, -1])
        cylinder(d = inner_diameter, h = height + 2, $fn = $fn);
    }
    
    // Flanges
    if (flange) {
        translate([0, 0, 0])
        cylinder(d = outer_diameter + 2 * chamfer, h = chamfer, $fn = $fn);
        translate([0, 0, height - chamfer])
        cylinder(d = outer_diameter + 2 * chamfer, h = chamfer, $fn = $fn);
    }
    
    // Steps
    if (step) {
        translate([0, 0, height / 2])
        cylinder(d1 = outer_diameter, d2 = outer_diameter / 2, h = height / 2, $fn = $fn);
    }
    
    // Chamfer
    if (chamfer > 0) {
        // Chamfer bottom
        translate([0, 0, 0])
        cylinder(d1 = outer_diameter, d2 = outer_diameter - 2 * chamfer, h = chamfer, $fn = $fn);
        // Chamfer top
        translate([0, 0, height - chamfer])
        cylinder(d1 = outer_diameter - 2 * chamfer, d2 = outer_diameter, h = chamfer, $fn = $fn);
    }
}