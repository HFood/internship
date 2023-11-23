function scr_player_fishride() //gml_Script_scr_player_fishride
{
    scr_player_collision(0, 0)
    xface = image_xscale
    if (key_jump_release && vsp < 0)
        vsp /= 2
    if grounded
    {
        jetjump = 0
        if (landsfx == 1)
        {
            image_index = 0
            walk_acc = 0.5
            landspr = spr_intern_jump_grab
            landsfx = 0
            with (obj_enemy)
            {
                var cam = view_camera[0]
                var x1 = camera_get_view_x(cam)
                var y1 = camera_get_view_y(cam)
                var x2 = (x1 + camera_get_view_width(cam))
                var y2 = (y1 + camera_get_view_height(cam))
                if point_in_rectangle(x, y, x1, y1, x2, y2)
                    vsp = -9
            }
            with (instance_create_depth(x, y, 20, obj_effecttemporary))
                sprite_index = spr_effect4
            with (obj_camera)
                shk_strength += 6
            repeat (2)
            {
                var bodyslam_destroyable = instance_place(x, (y + 1), obj_destroyable)
                if bodyslam_destroyable
                    bodyslam_destroyable.hp--
            }
            if (!(place_meeting(x, (y + 1), obj_destroyable)))
                scr_sound(sfx_groundpound)
            var bodyslam_metalblock = instance_place(x, (y + 1), obj_metalbox)
            if bodyslam_metalblock
                bodyslam_metalblock.hp--
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
    crouch = 0
    image_speed = 1
    if (spinning == 1)
    {
        if ((place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + 1), y, obj_breadbox_big_left))) && (!(place_meeting((x - 1), y, obj_breadbox_big_right))) && (!(place_meeting((x + image_xscale), y, obj_slope)))) || place_meeting((x + image_xscale), y, obj_fridge))
        {
            if audio_is_playing(suplexsfx)
                audio_stop_sound(suplexsfx)
            spinning = 0
            scr_sound(sfx_stun)
            image_index = 0
        }
    }
    if key_up_once
    {
        blink = 4
        with (instance_create_depth(x, y, 3, obj_bigfish))
            image_xscale = other.image_xscale
        if audio_is_playing(suplexsfx)
            audio_stop_sound(suplexsfx)
        image_index = 0
        jumpspr = spr_ghostic_jump
        vsp = -9
        spinning = 0
        tack0 = 1
        tack1 = 1
        tumblespd = 10
        state = "tumble"
    }
    if (jetjump == 1 && (!grounded))
    {
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
    }
    if (spinning == 1)
    {
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
    }
    else if (abs(onfire_spd) > 5)
    {
        if (ghost_cd > 0)
            ghost_cd--
        else
        {
            with (instance_create_depth(x, y, 30, obj_machafterimage))
                alarm[0] = 10
            ghost_cd = 4
        }
    }
    if (spinning == 1)
        sprite_index = spr_player_fishride_grab_idle
    else if grounded
    {
        if (move != 0)
        {
            if (landspr == spr_intern_jump_grab)
                sprite_index = spr_player_fishride_idle
            else
                sprite_index = spr_player_fishride_idle
        }
        else if (landspr == spr_intern_jump_grab)
            sprite_index = spr_player_fishride_idle
        else
            sprite_index = spr_player_fishride_idle
    }
    else
    {
        switch jumpspr
        {
            case spr_intern_jump_grab:
                sprite_index = spr_player_fishride_idle
                break
            case spr_sauce:
                sprite_index = spr_player_fishride_idle
                break
        }

    }
    if (key_jump && grounded && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        scr_sound(sfx_jump)
        vsp = -12
        jumpspr = spr_intern_jump_grab
    }
    if grounded
    {
        if (grabonground == -1)
        {
            grabbing = 0
            grabonground = 0
        }
    }
    else
        grabonground = -1
    scr_gravity()
    scr_player_action_suplex()
    if (spinning == 1)
        hsp = (image_xscale * 9)
    else
    {
        if (key_dash && hsp != 0)
        {
            if (sign(onfire_spd) != move)
                onfire_spd += (move * 0.5)
            else
                onfire_spd += (move * 0.08)
        }
        else if (onfire_spd > 0.25)
            onfire_spd -= 0.25
        else if (onfire_spd < -0.25)
            onfire_spd += 0.25
        else
            onfire_spd = 0
        onfire_spd = clamp(onfire_spd, -6, 6)
        hsp = ((move * (7 - inwater)) + onfire_spd)
    }
    if (key_jump && (!grounded) && jetjump == 0 && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        image_index = 0
        jumpspr = spr_intern_jump_grab
        scr_sound(sfx_spring)
        vsp = -10
        jetjump = 1
    }
}

