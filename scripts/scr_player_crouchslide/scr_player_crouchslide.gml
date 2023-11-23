function scr_player_crouchslide() //gml_Script_scr_player_crouchslide
{
    scr_player_collision(0, 0)
    scr_gravity()
    xface = image_xscale
    mask_index = spr_intern_crouch_hitbox
    if grounded
    {
        if (particle_delay > 0)
            particle_delay--
        else
        {
            with (instance_create_depth(x, y, 20, obj_effecttemporary))
            {
                sprite_index = spr_effect16
                image_xscale = other.image_xscale
            }
            particle_delay = 30
        }
    }
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
    if (crouchslide_machable > 0)
        crouchslide_machable--
    if (grounded && key_jump && crouchless == 0 && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        if audio_is_playing(slidesfx)
            audio_stop_sound(slidesfx)
        image_index = 0
        jumpspr = spr_intern_jump_grab
        vsp = -9
        spinning = 0
        tack0 = 1
        tack1 = 1
        tumblespd = abs(hsp)
        state = "tumble"
    }
    if (grounded && crouchslide_machable == 0 && key_dash && crouchless == 0 && (!(place_meeting((x + image_xscale), y, obj_solid))) && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        rolltotackle = 0
        tack0 = 1
        tack1 = 1
        tack2 = 1
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
        with (tackle_particle)
        {
            persistent = 1
            image_xscale = other.image_xscale
            targ = other.id
            sprite_index = spr_effect3
        }
        state = "tackle2"
    }
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + image_xscale), y, obj_sandwichbox_big))) && (!(place_meeting((x + image_xscale), y, obj_breadbox_big))) && (!(place_meeting((x + image_xscale), y, obj_breadbox_big_hidden))) && (!(place_meeting((x + image_xscale), y, obj_sandwichbox_big_hidden))) && (!(place_meeting((x + image_xscale), y, obj_slope))))
    {
        if audio_is_playing(slidesfx)
            audio_stop_sound(slidesfx)
        if (!grounded)
            vsp -= 3
        grabbing = 0
        state = "normal"
        image_index = 0
    }
    if (crouchslide_beforend > 0)
        crouchslide_beforend--
    else if (!key_down)
    {
        tackleturnspd = abs(hsp)
        image_index = 0
        tacklestop_spr = spr_player_tackle_stop_start
        state = "tacklestop"
    }
    if (jumpspr == spr_intern_jump_grab)
        sprite_index = spr_player_crouchslide
    else
        sprite_index = spr_player_crouchslide_loop
    hsp = (crouchslide_dur * image_xscale)
    image_speed = (crouchslide_dur / 10)
}

