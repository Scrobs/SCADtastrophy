// lib/utilities/bounding_box_utils.scad

/**
 * Fits an object within a specified bounding box.
 *
 * @param size Bounding box size [x, y, z].
 * @param obj_size Original object size [x, y, z].
 */
module fitToBoundingBox(size, obj_size) {
    scale([size[0] / obj_size[0], size[1] / obj_size[1], size[2] / obj_size[2]])
    children();
}
