function scr_player_superjump() //gml_Script_scr_player_superjump
{
    scr_player_collision(0, 0)
    if audio_is_playing(tackle2_sfx)
        audio_stop_sound(tackle2_sfx)
    if audio_is_playing(tackle1_sfx)
        audio_stop_sound(tackle1_sfx)
    if audio_is_playing(tackle0_sfx)
        audio_stop_sound(tackle0_sfx)
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_ghostmove))
        {
            plain = 1
            image_blend = 0xFF8030
            sprite_index = other.sprite_index
            image_index = other.image_index
            image_xscale = other.image_xscale
            image_yscale = other.image_yscale
        }
        ghost_cd = 2
    }
    xface = 1
    hsp = 0
    vsp = -15
    mask_index = spr_intern_hitbox
    image_speed = 1
    if (place_meeting(x, (y - 1), obj_solid) && (!(place_meeting(x, (y - 1), obj_destroyable))))
    {
        with (obj_camera)
            shk_strength += 4
        scr_sound(sfx_groundpound)
        grabonground = 0
        tack1 = 0
        tack2 = 0
        state = "ceilinghit"
        image_index = 0
    }
    if key_grab
    {
        image_index = 0
        machspd = 0
        machtime = 0
        if (move != 0)
            image_xscale = move
        state = "superjump_spin"
    }
    sprite_index = spr_player_superjump
}

