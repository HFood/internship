if (other.state != "doorexit" && other.state != "enterdoor" && other.state != "doorkey_enter" && safe == 0)
{
    if (obj_player.tauntduration > 0)
    {
        with (other)
        {
            scr_player_perform_parry(1, sign((other.x - x)), 7, 0)
            image_xscale = sign((other.x - x))
        }
        direction += 180
        safe = 1
    }
    else if (other.state != "hurt" && other.invincibility == 0 && other.state != "ghost" && other.state != "cheesed" && other.state != "enterportal" && other.state != "outterportal")
    {
        if (global.level == "circus" && global.no_onfire == 0)
        {
            with (instance_create_depth(x, y, 1, obj_tvtrigger))
            {
                txt = "Haha! Phil, you're so silly!"
                emo = "t_happy"
            }
            global.no_onfire = 1
        }
        scr_sound(sfx_fire_start)
        repeat (5)
            instance_create_depth(other.x, other.y, -1004, obj_flameeffect)
        with (other)
        {
            scr_player_action_voice_transfo()
            scr_sound(sfx_transfo)
            rolltotackle = 1
            tacklehit = 1
            tackle_airhit = 1
            spinning = 0
            tauntduration = 0
            tack0 = 0
            tack1 = 0
            tack2 = 0
            machspd = 0
            machtime = 0
            if audio_is_playing(suplexsfx)
                audio_stop_sound(suplexsfx)
            if instance_exists(tackle_particle)
                instance_destroy(tackle_particle)
            if audio_is_playing(tackle1_sfx)
                audio_stop_sound(tackle1_sfx)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            if audio_is_playing(roll_sfx)
                audio_stop_sound(roll_sfx)
            onfire_spd = hsp
            state = "onfire"
        }
        instance_destroy()
    }
}
