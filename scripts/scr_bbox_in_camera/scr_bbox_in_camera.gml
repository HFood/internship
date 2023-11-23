function scr_bbox_in_camera(argument0, argument1) //gml_Script_scr_bbox_in_camera
{
    if is_undefined(argument1)
        argument1 = 0
    cam_x = camera_get_view_x(argument0)
    cam_y = camera_get_view_y(argument0)
    cam_w = camera_get_view_width(argument0)
    cam_h = camera_get_view_height(argument0)
    return (bbox_left < ((cam_x + cam_w) + argument1) && bbox_right > (cam_x - argument1) && bbox_top < ((cam_y + cam_h) + argument1) && bbox_bottom > (cam_y - argument1));
}

