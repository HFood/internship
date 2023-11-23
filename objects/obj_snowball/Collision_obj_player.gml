if (other.state != "doorexit" && other.state != "enterdoor" && other.state != "doorkey_enter" && safe == 0)
{
    if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "snowball" && other.state != "cheesed")
    {
        if (global.level == "freezer" && global.no_snowball == 0)
        {
            with (instance_create_depth(x, y, 1, obj_tvtrigger))
                txt = "This is snowball transformation text"
            global.no_snowball = 1
        }
        with (other)
        {
            scr_player_action_voice_transfo()
            scr_sound(sfx_transfo)
            snowball_spd = 0
            image_xscale = other.image_xscale
            x = other.x
            y = other.y
            tauntduration = 0
            image_speed = 1
            rolltotackle = 1
            tacklehit = 1
            tackle_airhit = 1
            spinning = 0
            image_index = 0
            vsp = -2
            snowball_acc = 0
            state = "snowball"
            if instance_exists(tackle_particle)
                instance_destroy(tackle_particle)
            if audio_is_playing(tackle1_sfx)
                audio_stop_sound(tackle1_sfx)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            if audio_is_playing(roll_sfx)
                audio_stop_sound(roll_sfx)
            tack0 = 0
            tack1 = 0
            tack2 = 0
        }
        instance_destroy()
    }
}
