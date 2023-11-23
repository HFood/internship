if (withmach == 1 && instance_exists(obj_player))
{
    if (obj_player.state == "tackle2" || obj_player.state == "tackle1" || (obj_player.state == "cheesed" && obj_player.cheesed_state == "roll") || obj_player.state == "sodaride" || obj_player.state == "snowball")
    {
        mach_x += (obj_player.image_xscale * 1)
        mach_x = clamp(mach_x, -192, 192)
    }
    else if (mach_x > 5)
        mach_x -= 8
    else if (mach_x < -5)
        mach_x += 8
    else
        mach_x = 0
}
