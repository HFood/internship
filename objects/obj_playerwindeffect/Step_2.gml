if (!instance_exists(targ))
    instance_destroy()
else
{
    x = targ.x
    y = targ.y
    if (targ.state == "walljump" || targ.state == "tumble" || targ.spinning == 1 || targ.state == "superjump_kick")
    {
        image_angle = 0
        image_xscale = targ.image_xscale
    }
    else if (targ.state == "wallrun" || (targ.inwater == 1 && targ.vsp < 0) || (targ.state == "fishride" && targ.vsp < 0 && targ.jetjump == 1 && targ.grounded != 1))
    {
        image_angle = 90
        image_xscale = 1
    }
    if (room == rm_rank || room == rm_timesup)
        visible = false
    else if (targ.state == "walljump" || targ.state == "wallrun" || targ.state == "tumble" || targ.spinning == 1 || (targ.inwater == 1 && targ.vsp < 0) || (targ.state == "fishride" && targ.vsp < 0 && targ.jetjump == 1 && targ.grounded != 1) || targ.state == "superjump_kick")
        visible = true
    else
        visible = false
}
