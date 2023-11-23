function scr_player_onfire() //gml_Script_scr_player_onfire
{
    scr_player_collision(0, 0)
    xface = image_xscale
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        if (abs(onfire_spd) > 14)
        {
            with (instance_create_depth(x, y, 30, obj_machafterimage))
                alarm[0] = 10
        }
        else
        {
            with (instance_create_depth(x, y, 30, obj_ghostmove))
            {
                plain = 1
                image_blend = 0x007BFF
                sprite_index = other.sprite_index
                image_index = other.image_index
                image_xscale = other.image_xscale
                image_yscale = other.image_yscale
            }
        }
        ghost_cd = 4
    }
    if (key_jump_release && vsp < 0)
        vsp /= 3
    if grounded
    {
        if (landsfx == 1)
        {
            scr_1sound(sfx_land)
            landsfx = 0
        }
        if (stomp == 1)
            stomp = 0
        if (slidejump == 1)
            slidejump = 0
    }
    else
    {
        if key_down
            vsp += 1
        if (landsfx == 0)
            landsfx = 1
    }
    longfall_time = 46
    bodyslam_serious = 0
    instance_destroy(bodyslam_particle)
    mask_index = spr_intern_hitbox
    crouch = 0
    if grounded
    {
        if (hsp != 0)
        {
            if (fireparc_delay > 0)
                fireparc_delay--
            else
            {
                with (instance_create_depth(x, y, -10, obj_effecttemporary))
                    sprite_index = spr_tackleflame
                fireparc_delay = 8
            }
        }
        if (onfire_spd > 2 || onfire_spd < -2)
        {
            image_speed = (abs(onfire_spd) / 8)
            image_speed = max(image_speed, 0.5)
            sprite_index = spr_player_onfire_run
        }
        else
        {
            image_speed = 1
            sprite_index = spr_player_onfire_idle
        }
    }
    else
    {
        image_speed = 1.25
        switch jumpspr
        {
            case spr_intern_jump_grab:
                sprite_index = spr_player_onfire_jump
                break
            case spr_sauce:
                sprite_index = spr_player_onfire_jump_air
                break
            case spr_ghostic_jump:
                sprite_index = spr_player_onfire_spin
                break
        }

    }
    if (key_jump && grounded && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        repeat (5)
            instance_create_depth(x, y, -1004, obj_flameeffect)
        image_index = 0
        scr_sound(sfx_jump)
        vsp = -15
        if (abs(onfire_spd) > 8)
            jumpspr = spr_ghostic_jump
        else
            jumpspr = spr_intern_jump_grab
    }
    else if (key_jump && (!grounded) && place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))))
    {
        repeat (5)
            instance_create_depth(x, y, -1004, obj_flameeffect)
        scr_sound(sfx_dive)
        scr_sound(sfx_jump)
        onfire_spd = (12 * (-image_xscale))
        vsp = -12
        jumpspr = spr_ghostic_jump
    }
    grabonground = -1
    scr_gravity()
    hsp = onfire_spd
    if (move != 0)
    {
        if (move == 1 && onfire_spd < 11)
        {
            if ((!grounded) && onfire_spd < 6)
                onfire_spd += 0.5
            else if grounded
            {
                if (onfire_spd < 0)
                    onfire_spd += 1
                else
                    onfire_spd += 0.5
            }
        }
        else if (move == -1 && onfire_spd > -11)
        {
            if ((!grounded) && onfire_spd > -6)
                onfire_spd -= 0.5
            else if grounded
            {
                if (onfire_spd > 0)
                    onfire_spd -= 1
                else
                    onfire_spd -= 0.5
            }
        }
    }
    else if (onfire_spd < -0.5)
        onfire_spd += 0.4
    else if (onfire_spd > 0.5)
        onfire_spd -= 0.4
    else
        onfire_spd = 0
    if (onfire_spd > 11)
        onfire_spd -= 0.6
    else if (onfire_spd < -11)
        onfire_spd += 0.6
    if place_meeting(x, y, obj_water)
    {
        jumpspr = spr_sauce
        onfire_spd = 0
        repeat irandom_range(3, 6)
            instance_create_depth((x + irandom_range(-32, 32)), (y + irandom_range(0, 64)), -1004, obj_steam)
        state = "normal"
        tack0 = 0
        tack1 = 0
        tack2 = 0
        tacklehit = 1
        rolltotackle = 1
        machtime = 0
        machspd = 0
        grabonground = 0
    }
}

