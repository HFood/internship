function scr_player_tackle0() //gml_Script_scr_player_tackle0
{
    scr_player_collision(0, 0)
    xface = image_xscale
    if (image_xscale != move && move != 0 && grounded)
    {
        image_index = 0
        image_xscale = move
    }
    if (!audio_is_playing(tackle0_sfx))
        tackle0_sfx = audio_play_sound(sfx_mach1, 1, true)
    if (key_jump_release && vsp < 0)
        vsp /= 2
    if grounded
    {
        if (stomp == 1)
            stomp = 0
        if (slidejump == 1)
            slidejump = 0
    }
    else if audio_is_playing(tackle0_sfx)
        audio_stop_sound(tackle0_sfx)
    image_speed = 1.5
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
            image_xscale = other.image_xscale
            image_yscale = other.image_yscale
        }
        ghost_cd = 4
    }
    scr_player_action_suplex()
    if grounded
        sprite_index = spr_player_tackle0
    else
        sprite_index = spr_player_tackle0_jump
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))))
    {
        tack2 = 0
        tack1 = 0
        tack0 = 0
        grabonground = 1
        machtime = 0
        machspd = 0
        rolltotackle = 1
        tacklehit = 1
        state = "normal"
    }
    if (key_jump && grounded && (!(place_meeting(x, (y - 1), obj_solid))))
        vsp = -10
    if grounded
    {
        if (grabonground == -1)
        {
            if audio_is_playing(suplexsfx)
                audio_stop_sound(suplexsfx)
            grabbing = 0
            grabonground = 0
        }
    }
    else
        grabonground = -1
    scr_gravity()
    hsp = (image_xscale * (7 - (inwater * 1)))
    if ((!key_dash) && grounded)
    {
        if audio_is_playing(tackle0_sfx)
            audio_stop_sound(tackle0_sfx)
        tack0 = 0
        state = "normal"
    }
}

