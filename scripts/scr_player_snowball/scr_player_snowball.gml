function scr_player_snowball() //gml_Script_scr_player_snowball
{
    scr_player_collision(0, 0)
    xface = image_xscale
    if (key_jump_release && vsp < 0)
        vsp /= 3
    if grounded
    {
        if (particle_delay > 0)
            particle_delay--
        else
        {
            with (instance_create_depth(x, (y + (sprite_height / 2)), 20, obj_effecttemporary))
            {
                sprite_index = spr_effect1
                image_xscale = other.image_xscale
            }
            particle_delay = 10
        }
        if (landsfx == 1)
        {
            var chs_debris = irandom_range(3, 5)
            repeat chs_debris
            {
                with (instance_create_depth(x, bbox_bottom, -1000, obj_debris))
                {
                    sprite_index = spr_snowball_debris
                    image_index = irandom_range(0, 3)
                    hsp = irandom_range(-6, 6)
                    vsp = irandom_range(-4, 1)
                }
            }
            scr_1sound(sfx_land)
            landsfx = 0
        }
        if (stomp == 1)
            stomp = 0
        if (slidejump == 1)
            slidejump = 0
    }
    else if (landsfx == 0)
        landsfx = 1
    longfall_time = 46
    bodyslam_serious = 0
    instance_destroy(bodyslam_particle)
    mask_index = spr_intern_hitbox
    sprite_index = spr_player_snowball
    crouch = 0
    image_speed = (abs(hsp) / 4)
    if (move == image_xscale && snowball_acc < 4)
        snowball_acc += 0.015
    else if (snowball_acc > 0)
        snowball_acc -= 0.02
    if (key_jump && grounded && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        scr_sound(sfx_jump)
        vsp = -12
        jumpspr = spr_intern_jump_grab
    }
    if (!audio_is_playing(roll_sfx))
        roll_sfx = audio_play_sound(sfx_snowroll, 1, true)
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + image_xscale), y, obj_snowblock))))
    {
        scr_sound(sfx_roll_end)
        chs_debris = irandom_range(3, 5)
        repeat chs_debris
        {
            with (instance_create_depth(x, y, -1000, obj_debris))
            {
                sprite_index = spr_snowball_debris_big
                image_index = irandom_range(0, 3)
                hsp = irandom_range(-6, 6)
                vsp = irandom_range(-4, 1)
            }
        }
        chs_debris = irandom_range(4, 7)
        repeat chs_debris
        {
            with (instance_create_depth(x, y, -1000, obj_debris))
            {
                sprite_index = spr_snowball_debris
                image_index = irandom_range(0, 3)
                hsp = irandom_range(-6, 6)
                vsp = irandom_range(-4, 1)
            }
        }
        image_index = 0
        state = "wallstun"
    }
    if place_meeting(x, (y + 1), obj_slope)
    {
        with (instance_place(x, (y + 1), obj_slope))
        {
            if sign(image_xscale == (-other.image_xscale))
            {
                if (other.snowball_spd < 5)
                    other.snowball_spd += 0.15
            }
            else if (other.snowball_spd > 0)
                other.snowball_spd -= 0.075
        }
    }
    else if (snowball_spd > 0)
        snowball_spd -= 0.075
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_ghostmove))
        {
            plain = 1
            image_blend = 0xFFA454
            sprite_index = other.sprite_index
            image_index = other.image_index
            image_xscale = other.image_xscale
            image_yscale = other.image_yscale
        }
        ghost_cd = 4
    }
    scr_player_action_suplex()
    scr_gravity()
    hsp = (image_xscale * ((snowball_spd + 9) + snowball_acc))
}

