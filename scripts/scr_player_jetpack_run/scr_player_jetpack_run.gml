function scr_player_jetpack_run() //gml_Script_scr_player_jetpack_run
{
    scr_player_collision(0, 0)
    xface = image_xscale
    image_speed = 1
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
            alarm[0] = 10
        ghost_cd = 4
    }
    if (!audio_is_playing(tackle2_sfx))
        tackle2_sfx = audio_play_sound(sfx_mach3, 1, true)
    if ((grounded && key_down) || crouchless == 1)
    {
        mask_index = spr_intern_crouch_hitbox
        crouch = 1
        if instance_exists(tackle_particle)
            instance_destroy(tackle_particle)
    }
    else
    {
        mask_index = spr_intern_hitbox
        crouch = 0
        if (!instance_exists(tackle_particle))
        {
            tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
            with (tackle_particle)
            {
                persistent = 1
                image_xscale = other.image_xscale
                targ = other.id
                sprite_index = spr_effect3
            }
        }
    }
    if (machspd < 7 && crouch == 0 && move == image_xscale)
        machspd += 0.08
    else if (machspd > 0 && crouch == 0)
        machspd -= 0.04
    if key_down
        vsp = (4 + (machspd / 2))
    else if key_up
        vsp = (-((4 + (machspd / 2))))
    else
        vsp = 0
    if (crouch == 1)
        sprite_index = spr_player_jetpack_run_crouch
    else
        sprite_index = spr_player_jetpack_run
    if (key_jump && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        scr_sound(sfx_woosh)
        if key_up
        {
            image_index = 0
            state = "jetpack_windup"
        }
        else
        {
            jetpack_spd = (12 * image_xscale)
            jumpspr = spr_intern_jump_grab
            vsp = -11
            state = "jetpack_dash"
        }
    }
    hsp = (image_xscale * (12 + machspd))
    if ((place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + 1), y, obj_breadbox_big_left))) && (!(place_meeting((x - 1), y, obj_breadbox_big_right))) && (!(place_meeting((x + image_xscale), y, obj_metalbox))) && (!(place_meeting((x + image_xscale), y, obj_slope))) && crouch == 0) || ((place_meeting((x + image_xscale), y, obj_metalbox) || place_meeting((x + image_xscale), y, obj_solid)) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + image_xscale), y, obj_slope))) && crouch == 1))
    {
        with (instance_create_depth((x + (image_xscale * 32)), y, -1, obj_effecttemporary))
            sprite_index = spr_effect5
        scr_sound(sfx_groundpound)
        scr_sound(sfx_stun)
        tack2 = 0
        tack1 = 0
        tack2 = 0
        state = "wallstun_hard"
        vsp = -5
        hsp = ((machspd * 3) * (-image_xscale))
        hsp = clamp(hsp, -8, 8)
        image_index = 0
    }
}

