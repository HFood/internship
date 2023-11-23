if (other.state != "ghost" && other.state != "sodaride" && other.state != "cemented" && ok == 0)
{
    scr_sound(sfx_concretemixer)
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
        longfall_time = 75
        x = other.x
        y = (other.y - 64)
    }
    ok = 1
    instance_deactivate_object(other)
}
