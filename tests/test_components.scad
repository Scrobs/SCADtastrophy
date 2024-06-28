// /home/Rowunk/OpenSCAD (symlink)/my_openscad_library/tests/test_components.scad

use <../lib/components/battery_holder.scad>;
use <../lib/components/bracket.scad>;
use <../lib/components/led_holder.scad>;
use <../lib/components/motor_mount.scad>;
use <../lib/components/servo_holder.scad>;

module testAllComponents() {
    testBattery_holder();
    testBracket();
    testLed_holder();
    testMotor_mount();
    testServo_holder();
}

testAllComponents();
