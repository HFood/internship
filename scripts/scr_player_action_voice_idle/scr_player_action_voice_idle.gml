function scr_player_action_voice_idle() //gml_Script_scr_player_action_voice_idle
{
    audio_stop_sound(global.playervoice)
    global.playervoice = audio_play_sound(asset_get_index(("sfx_phil_idle" + string(choose(1, 2, 3, 4, 5, 6, 7, 8)))), 1, false)
}

