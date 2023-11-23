if instance_exists(targ)
{
    x = targ.x
    y = targ.y
    if place_meeting(x, y, obj_solid)
    {
        with (targ)
            crouchless = 1
    }
    else
    {
        with (targ)
            crouchless = 0
    }
}
