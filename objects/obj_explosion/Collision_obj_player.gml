if (safe == 0 && other.state != "cheesed" && other.state != "keyget" && other.state != "enterdoor" && other.state != "entergate" && other.state != "ghost" && other.state != "parry" && other.state != "cutscene" && other.state != "doorkey_enter" && other.state != "doorexit" && other.state != "hurt" && other.state != "roomenter" && other.state != "timesup" && other.invincibility == 0 && harmless == 0)
{
    with (other)
    {
        rolltotackle = 1
        tacklehit = 1
        tackle_airhit = 1
        spinning = 0
        tauntduration = 0
        image_index = 0
        vsp = -3
        state = "blewrecover"
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
}
