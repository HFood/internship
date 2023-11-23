if (global.escape == 0 && (!audio_is_playing(music)))
{
    var time = audio_sound_get_track_position(global.music)
    var mus = global.music
    audio_group_stop_all(1)
    global.music = audio_play_sound(music, 1, true)
    switch dontmatch
    {
        case 2:
            if (mus == 58 || mus == 31)
                audio_sound_set_track_position(global.music, time)
            break
        case 0:
            audio_sound_set_track_position(global.music, time)
            break
    }

}
instance_destroy()
