if (place_meeting(x, (y - 1), obj_player) && sprite_index == spr_spring && obj_player.state != "ghost" && obj_player.state != "superjump" && obj_player.state != "superjump_spin")
{
    if (obj_player.state == "uppunch")
        obj_player.state = "normal"
    if (obj_player.state == "jetpack_wallhit")
        obj_player.state = "normal"
    if (obj_player.state == "tackleturn")
    {
        with (obj_player)
        {
            image_xscale = (-image_xscale)
            facing = (-facing)
            if (tack2 == 1)
            {
                tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
                with (tackle_particle)
                {
                    image_xscale = other.image_xscale
                    targ = other.id
                    sprite_index = spr_effect3
                }
                state = "tackle2"
            }
            else
                state = "tackle1"
        }
    }
    obj_player.longfall_time = 75
    scr_1sound(sfx_spring)
    audio_sound_pitch(sfx_spring, random_range(0.95, 1.05))
    if (obj_player.state == "bodyslam")
    {
        with (obj_player)
        {
            jumpspr = spr_ghostic_jump
            vsp = -14
        }
        obj_player.state = "normal"
    }
    else
    {
        with (obj_player)
            vsp = -12
    }
    if (obj_player.state == "tackle2" && obj_player.crouch == 1)
        obj_player.crouch = 0
    sprite_index = spr_spring_jump
}
