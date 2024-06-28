
# OpenSCAD Library Naming Conventions

## Overview
This document outlines the naming conventions used in the OpenSCAD library. Consistent naming conventions improve code readability and maintainability.

## Module Names
Modules are the building blocks of the library and should have clear, descriptive names.

- Use `camelCase` for module names.
- Prefix component modules with `mod_`.
- Prefix connector modules with `con_`.
- Prefix mechanism modules with `mech_`.
- Prefix shape modules with `shape_`.
- Prefix utility modules with `util_`.

### Examples
```scad
module modMotorMount(size = 10) { ... }
module conBolt(length = 20, diameter = 5) { ... }
module mechHinge(angle = 90) { ... }
module shapeCube(size = 10) { ... }
module utilTransformRotate(axis, angle) { ... }
```

## Function Names
Functions perform specific calculations or transformations and should be named accordingly.

- Use `camelCase` for function names.
- Prefix utility functions with `fn_`.

### Examples
```scad
function fnDistance(point1, point2) = ...;
function fnRotateVector(vector, angle) = ...;
```

## Variable Names
Variables should be descriptive and use `camelCase`.

- Prefix global variables with `g_`.
- Prefix local variables with `l_`.

### Examples
```scad
g_defaultSize = 10;
l_radius = 5;
```

## File Names
File names should be in `snake_case` and reflect the module or function contained within the file.

### Examples
```
motor_mount.scad
bolt.scad
hinge.scad
cube.scad
transform_rotate.scad
```

## Directory Names
Directories should use `snake_case` for consistency.

### Examples
```
/components
/connectors
/mechanisms
/shapes
/utilities
```

## Example Implementation

### Directory Structure
```
/my_openscad_library
    /lib
        /components
            motor_mount.scad
            battery_holder.scad
        /connectors
            bolt.scad
            bracket.scad
        /mechanisms
            hinge.scad
            gear.scad
        /shapes
            cube.scad
            sphere.scad
        /utilities
            transform_rotate.scad
            math_helpers.scad
```

### Example Module: `motor_mount.scad`
```scad
// lib/components/motor_mount.scad

/**
 * Creates a motor mount of specified size.
 * 
 * @param size The size of the motor mount (default is 10).
 */
module modMotorMount(size = 10) {
    cube([size, size, size / 2]);
}
```

### Example Utility: `transform_rotate.scad`
```scad
// lib/utilities/transform_rotate.scad

/**
 * Rotates a given point around an axis by a specified angle.
 * 
 * @param axis The axis of rotation (e.g., [1, 0, 0] for x-axis).
 * @param angle The angle of rotation in degrees.
 * @return The rotated point.
 */
function fnRotateVector(vector, angle) = [
    vector[0] * cos(angle) - vector[1] * sin(angle),
    vector[0] * sin(angle) + vector[1] * cos(angle),
    vector[2]
];
```

## Summary
Adhering to these naming conventions ensures that the OpenSCAD library remains clean, organized, and easy to maintain. Consistent naming helps both in understanding the code and in collaborating with others.
