if collision_rectangle((homex + 16), (homey + 16), (homex - 16), (homey - 16), obj_firefly, 0, 0)
{
    var _dir = irandom_range(1, 360)
    var _diff = angle_difference(_dir, direction)
    direction += (_diff * 0.25)
}
else
{
    _dir = point_direction(x, y, homex, homey)
    _diff = angle_difference(_dir, direction)
    direction += (_diff * 0.25)
}
