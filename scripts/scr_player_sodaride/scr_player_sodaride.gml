function scr_player_sodaride() //gml_Script_scr_player_sodaride
{
    switch soda_state
    {
        case 0:
            image_speed = 1.5
            sprite_index = spr_player_sodaride_start
            hsp = (6 * image_xscale)
            if (image_index >= 5 && soda_capthrown == 0)
            {
                with (instance_create_depth((x + (image_xscale * -32)), (y + 16), 19, obj_debris))
                {
                    sprite_index = spr_soda_cap
                    spinning = 1
                    spinstrength = irandom_range(10, 30)
                    particles = 0
                    hsp = irandom_range(-4, 4)
                    vsp = irandom_range(-3, -6)
                }
                soda_capthrown = 1
            }
            break
        case 1:
            image_speed = 1
            if (sodaspd > 6)
                sprite_index = spr_player_sodaride_fast
            else
                sprite_index = spr_player_sodaride
            if (ghost_cd > 0)
                ghost_cd--
            else
            {
                instance_create_depth((x + (image_xscale * -32)), (y + 16), 10, obj_sodaeffect)
                with (instance_create_depth(x, y, 30, obj_machafterimage))
                    alarm[0] = 10
                ghost_cd = 4
            }
            if (!audio_is_playing(tackle2_sfx))
                tackle2_sfx = audio_play_sound(sfx_tackle2, 1, true)
            if ((place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + 1), y, obj_breadbox_big_left))) && (!(place_meeting((x - 1), y, obj_breadbox_big_right))) && (!(place_meeting((x + image_xscale), y, obj_metalbox))) && (!(place_meeting((x + image_xscale), y, obj_slope))) && crouch == 0) || ((place_meeting((x + image_xscale), y, obj_metalbox) || place_meeting((x + image_xscale), y, obj_solid)) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + image_xscale), y, obj_slope))) && crouch == 1))
            {
                with (instance_create_depth(x, y, 0, obj_explosion))
                    harmless = 1
                with (instance_create_depth((x + (image_xscale * 32)), y, -1, obj_effecttemporary))
                    sprite_index = spr_effect5
                instance_destroy(tackle_particle)
                if audio_is_playing(tackle2_sfx)
                    audio_stop_sound(tackle2_sfx)
                scr_sound(sfx_groundpound)
                scr_sound(sfx_stun)
                tack0 = 0
                tack1 = 0
                tack2 = 0
                grabonground = 0
                machtime = 0
                machspd = 0
                rolltotackle = 1
                tacklehit = 1
                state = "normal"
                vsp = -5
                jumpspr = spr_lamp
            }
            if grounded
            {
                if (fireparc_delay > 0)
                    fireparc_delay--
                else
                {
                    with (instance_create_depth(x, y, -10, obj_effecttemporary))
                        sprite_index = spr_tackleflame
                    fireparc_delay = 2
                }
            }
            if (sodaspd < 7 && move == image_xscale)
                sodaspd += 0.08
            else if (sodaspd > 0)
                sodaspd -= 0.04
            hsp = ((10 + sodaspd) * image_xscale)
            if (key_jump && (!(place_meeting(x, (y - 1), obj_solid))))
            {
                with (instance_create_depth(x, y, 0, obj_explosion))
                    harmless = 1
                jumpspr = spr_intern_jump_grab
                image_index = 0
                tack0 = 1
                tack1 = 1
                tack2 = 1
                instance_destroy(tackle_particle)
                if audio_is_playing(tackle2_sfx)
                    audio_stop_sound(tackle2_sfx)
                if audio_is_playing(tackle1_sfx)
                    audio_stop_sound(tackle1_sfx)
                if audio_is_playing(tackle0_sfx)
                    audio_stop_sound(tackle0_sfx)
                tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
                with (tackle_particle)
                {
                    persistent = 1
                    image_xscale = other.image_xscale
                    targ = other.id
                    sprite_index = spr_effect3
                }
                rolltotackle = -1
                state = "tackle2"
                vsp = -8
            }
            break
    }

    scr_player_collision(0, 0)
    xface = image_xscale
    mask_index = spr_intern_hitbox
    if key_down
        vsp = 4
    else if key_up
        vsp = -4
    else
        vsp = 0
}

