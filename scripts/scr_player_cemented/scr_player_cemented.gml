function scr_player_cemented() //gml_Script_scr_player_cemented
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
            dis_spd = 0.08
            plain = 0
            sprite_index = other.sprite_index
            image_index = other.image_index
            image_xscale = other.image_xscale
            image_yscale = other.image_yscale
        }
        ghost_cd = 4
    }
    xface = 1
    hsp = 0
    vsp = -17
    mask_index = spr_intern_hitbox
    image_speed = 1
    if (place_meeting(x, (y - 1), obj_solid) && (!(place_meeting(x, (y - 1), obj_destroyable))))
    {
        repeat irandom_range(3, 6)
        {
            with (instance_create_depth(x, y, -1004, obj_debris))
            {
                spinning = 1
                spinstrength = irandom_range(10, 40)
                spindir = choose(1, -1)
                image_blend = other.image_blend
                image_angle = irandom_range(1, 360)
                image_index = irandom_range(0, 3)
                hsp = irandom_range(6, -6)
                vsp = irandom_range(2, -8)
                sprite_index = spr_cement_debris
            }
        }
        with (obj_camera)
            shk_strength += 4
        scr_sound(sfx_concretesmash)
        grabonground = 0
        tack1 = 0
        tack2 = 0
        state = "ceilinghit"
        image_index = 0
    }
    sprite_index = spr_player_cemented
}

