// /home/Rowunk/OpenSCAD (symlink)/my_openscad_library/tests/test_connectors.scad

use <../lib/connectors/bolt.scad>;
use <../lib/connectors/clip.scad>;
use <../lib/connectors/nut.scad>;
use <../lib/connectors/spacer.scad>;

module testAllConnectors() {
    testBolt();
    testClip();
    testNut();
    testSpacer();
}

testAllConnectors();
