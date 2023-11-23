if (!audio_is_playing(mu_title2))
{
    audio_group_load(1)
    audio_group_load(2)
    audio_group_stop_all(1)
    global.music = audio_play_sound(mu_title2, 1, true)
}
