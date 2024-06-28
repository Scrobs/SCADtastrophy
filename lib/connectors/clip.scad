/**
 * Creates a clip with specified parameters including functional grips.
 *
 * @param width The width of the clip.
 * @param height The height of the clip.
 * @param thickness The thickness of the clip material.
 * @param spring Boolean to add a spring mechanism.
 * @param grip_teeth Boolean to add grip teeth.
 */
module conClip(width = 10, height = 20, thickness = 2, spring = false, grip_teeth = false) {
    difference() {
        // Outer clip
        cube([width, thickness, height]);
        
        // Inner space
        translate([thickness, 0, thickness])
        cube([width - 2 * thickness, thickness, height - 2 * thickness]);
        
        // Spring mechanism
        if (spring) {
            translate([0, thickness / 2, height / 2 - thickness / 2])
            rotate([0, 90, 0])
            cylinder(d = thickness / 2, h = width);
        }
        
        // Grip teeth
        if (grip_teeth) {
            for (i = [thickness : 2 * thickness : height - 2 * thickness]) {
                translate([0, 0, i])
                cube([thickness / 2, thickness, thickness / 2]);
            }
        }
    }
}

// Example usage
conClip(width = 15, height = 30, thickness = 3, spring = true, grip_teeth = true);
