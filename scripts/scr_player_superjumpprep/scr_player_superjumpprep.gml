function scr_player_superjumpprep() //gml_Script_scr_player_superjumpprep
{
    scr_player_collision(0, 0)
    scr_gravity()
    if (!audio_is_playing(superjumpprep_sfx))
        superjumpprep_sfx = audio_play_sound(sfx_superjumpprep, 1, true)
    if audio_is_playing(tackle2_sfx)
        audio_stop_sound(tackle2_sfx)
    if audio_is_playing(tackle1_sfx)
        audio_stop_sound(tackle1_sfx)
    if audio_is_playing(tackle0_sfx)
        audio_stop_sound(tackle0_sfx)
    mask_index = spr_intern_crouch_hitbox
    if (superjump_slide > 0)
    {
        hsp = ((8 - (inwater * 1)) * image_xscale)
        superjump_slide--
    }
    else
        hsp = (move * (3 - (inwater * 1)))
    image_speed = 1
    if (move == 0)
    {
        xface = 1
        sprite_index = spr_player_superjump_prep
    }
    else
    {
        xface = image_xscale
        sprite_index = spr_player_superjump_prep_walk
    }
    if ((key_up_release || (!key_up)) && crouchless == 0)
    {
        with (instance_create_depth(x, y, 10, obj_effecttemporary))
            sprite_index = spr_effect19
        scr_sound(sfx_superjump)
        state = "superjump"
    }
}

