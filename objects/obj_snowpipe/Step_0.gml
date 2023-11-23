if (timer > 0)
{
    timer--
    if (timer == 0)
    {
        image_index = 0
        sprite_index = spr_snowpipe_launch
    }
}
else if (image_index >= 4 && launched == 0)
{
    var cam = view_camera[0]
    var x1 = camera_get_view_x(cam)
    var y1 = camera_get_view_y(cam)
    var x2 = (x1 + camera_get_view_width(cam))
    var y2 = (y1 + camera_get_view_height(cam))
    if point_in_rectangle(x, y, x1, y1, x2, y2)
        scr_sound(sfx_projectile)
    with (instance_create_depth((x + (image_xscale * 64)), (y - 16), 2, obj_snowball))
    {
        vsp = -3
        image_xscale = other.image_xscale
    }
    launched = 1
    timer = 80
}
