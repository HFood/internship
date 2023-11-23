if (!instance_exists(targ))
    instance_destroy()
else
{
    x = targ.x
    y = targ.y
}
if (sprite_index == spr_effect3)
{
    blinking = 1
    if (obj_player.state != "tackle2" && obj_player.state != "sodaride" && obj_player.state != "jetpack_run" && obj_player.state != "superjump_kick")
        instance_destroy()
}
