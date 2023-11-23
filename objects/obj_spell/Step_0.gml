if (safe == 0)
{
    if instance_exists(obj_player)
    {
        var _dir = point_direction(x, y, obj_player.x, obj_player.y)
        var _diff = angle_difference(_dir, direction)
        direction += (_diff * 0.08)
    }
}
else if instance_exists(obj_enemy)
{
    var _targ = instance_nearest(x, y, obj_enemy)
    _dir = point_direction(x, y, _targ.x, _targ.y)
    _diff = angle_difference(_dir, direction)
    direction += (_diff * 0.08)
}
image_angle = direction
if (safe == 0)
{
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
        {
            image_index = other.image_index
            image_angle = other.image_angle
            sprite_index = other.sprite_index
            alarm[0] = 10
        }
        ghost_cd = 4
    }
}
if (timer > 0)
    timer--
else
{
    scr_effectpoof()
    instance_destroy()
}
