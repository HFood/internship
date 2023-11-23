scr_player_collision(0, 0)
scr_gravity()
if (landsfx == 0 && grounded)
{
    with (obj_enemy)
    {
        var cam = view_camera[0]
        var x1 = camera_get_view_x(cam)
        var y1 = camera_get_view_y(cam)
        var x2 = (x1 + camera_get_view_width(cam))
        var y2 = (y1 + camera_get_view_height(cam))
        if point_in_rectangle(x, y, x1, y1, x2, y2)
            vsp = -9
    }
    with (instance_create_depth(x, y, 20, obj_effecttemporary))
        sprite_index = spr_effect4
    with (obj_camera)
        shk_strength += 6
    repeat (2)
    {
        var bodyslam_destroyable = instance_place(x, (y + 1), obj_destroyable)
        if bodyslam_destroyable
            bodyslam_destroyable.hp--
    }
    if (!(place_meeting(x, (y + 1), obj_destroyable)))
        scr_sound(sfx_groundpound)
    var bodyslam_metalblock = instance_place(x, (y + 1), obj_metalbox)
    if bodyslam_metalblock
        bodyslam_metalblock.hp--
    landsfx = 1
}
if (!grounded)
    landsfx = 0
