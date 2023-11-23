function scr_player_jetpack_windup() //gml_Script_scr_player_jetpack_windup
{
    scr_player_collision(0, 0)
    xface = image_xscale
    if (!audio_is_playing(superjumpprep_sfx))
        superjumpprep_sfx = audio_play_sound(sfx_superjumpprep, 1, true)
    grabbing = 0
    spinning = 0
    tauntduration = 0
    stomp = 0
    crouch = 0
    hsp = 0
    vsp = 0
    image_speed = 1.2
    sprite_index = spr_player_jetpack_windup
}

