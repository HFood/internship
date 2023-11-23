function scr_player_tumble() //gml_Script_scr_player_tumble
{
    scr_player_collision(0, 0)
    scr_gravity()
    if audio_is_playing(tackle2_sfx)
        audio_stop_sound(tackle2_sfx)
    if audio_is_playing(tackle1_sfx)
        audio_stop_sound(tackle1_sfx)
    if audio_is_playing(tackle0_sfx)
        audio_stop_sound(tackle0_sfx)
    scr_player_action_suplex()
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_ghostmove))
        {
            dis_spd = 0.08
            plain = 0
            sprite_index = other.sprite_index
            image_index = other.image_index
        }
        ghost_cd = 4
    }
    xface = image_xscale
    hsp = (image_xscale * tumblespd)
    image_speed = 1.5
    if grounded
    {
        jumpspr = spr_sauce
        rolltotackle = 1
        machtime = 30
        state = "tackle1"
    }
    scr_player_action_suplex()
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + image_xscale), y, obj_slope))))
    {
        wrun_tackle = 1
        wallrun_spd = 1
        instance_destroy(tackle_particle)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        state = "wallrun"
    }
    switch jumpspr
    {
        case spr_intern_jump_grab:
            sprite_index = spr_player_tumblejump
            break
        case spr_sauce:
            sprite_index = spr_player_tumblejump_loop
            break
        case spr_ghostic_jump:
            sprite_index = spr_player_tumble
            break
    }

}

