var cam = view_camera[0]
var x1 = camera_get_view_x(cam)
var y1 = camera_get_view_y(cam)
var x2 = (x1 + camera_get_view_width(cam))
var y2 = (y1 + camera_get_view_height(cam))
if point_in_rectangle(x, y, x1, y1, x2, y2)
{
    with (obj_camera)
        shk_strength = 8
}
scr_sound(sfx_explosion)
depth = 0
safe = 0
harmless = 0
image_xscale = 2
image_yscale = 2
