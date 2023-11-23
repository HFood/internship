function scr_player_action_voice_pain() //gml_Script_scr_player_action_voice_pain
{
    if (voice_hurttime <= 0)
    {
        audio_stop_sound(global.playervoice)
        global.playervoice = audio_play_sound(asset_get_index(("sfx_phil_pain" + string(choose(1, 2, 3, 4, 5, 6, 7, 8)))), 1, false)
        voice_hurttime = irandom_range(100, 350)
    }
}

