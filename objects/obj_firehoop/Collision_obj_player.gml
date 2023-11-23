if (other.state != "ghost" && other.state != "onfire" && other.state != "sodaride" && sprite_index == spr_firehoop)
{
    if (global.level == "circus" && global.no_onfire == 0 && global.escape == 0)
    {
        with (obj_parallax)
            circus_audience_joy = 300
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
}
