function scr_player_jetpack_dash() //gml_Script_scr_player_jetpack_dash
{
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + 1), y, obj_breadbox_big_left))) && (!(place_meeting((x - 1), y, obj_breadbox_big_right))) && (!(place_meeting((x + image_xscale), y, obj_slope))))
    {
        airstun_dur = 60
        vsp = -6
        image_xscale = (-image_xscale)
        state = "jetpack_wallhit"
    }
    if (key_jump && jetjump == 0)
    {
        scr_sound(sfx_woosh)
        jetpack_spd = (12 * image_xscale)
        jumpspr = spr_intern_jump_grab
        jet_jumpspr = spr_intern_jump_grab
        vsp = -11
        state = "jetpack_dash"
        jetjump = 1
    }
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
            alarm[0] = 10
        ghost_cd = 4
    }
    scr_player_collision(0, 0)
    scr_gravity()
    xface = image_xscale
    hsp = jetpack_spd
    if (longfall_time > 0)
        longfall_time--
    else
    {
        if (longfall_time != -1)
        {
            tumblefall = 0
            bodyslam_ystart = y
            longfall_time = -1
        }
        if ((y - bodyslam_ystart) > 160 && (!instance_exists(bodyslam_particle)))
        {
            if (bodyslam_serious == 0)
            {
                bodyslam_particle = instance_create_depth(x, y, -1, obj_effecttarget)
                with (bodyslam_particle)
                {
                    targ = other.id
                    sprite_index = spr_effect14
                }
            }
            bodyslam_serious = 1
        }
    }
    if grounded
    {
        if (bodyslam_serious == 1)
        {
            with (obj_enemy)
            {
                var cam = view_camera[0]
                var x1 = camera_get_view_x(cam)
                var y1 = camera_get_view_y(cam)
                var x2 = (x1 + camera_get_view_width(cam))
                var y2 = (y1 + camera_get_view_height(cam))
                if point_in_rectangle(x, y, x1, y1, x2, y2)
                    vsp = -7
            }
            with (instance_create_depth(x, y, 20, obj_effecttemporary))
                sprite_index = spr_effect4
            with (obj_camera)
                shk_strength += 4
            repeat (2)
            {
                var bodyslam_destroyable = instance_place(x, (y + 1), obj_destroyable)
                if bodyslam_destroyable
                    bodyslam_destroyable.hp--
            }
            scr_sound(sfx_groundpound)
            if (bodyslam_serious == 1)
            {
                var bodyslam_metalblock = instance_place(x, (y + 1), obj_metalbox)
                if bodyslam_metalblock
                    bodyslam_metalblock.hp--
            }
            bodyslam_serious = 0
            instance_destroy(bodyslam_particle)
            state = "longfall_hit"
        }
        else
            state = "normal"
    }
    switch jet_jumpspr
    {
        case spr_intern_jump_grab:
            switch jumpspr
            {
                case spr_intern_jump_grab:
                    sprite_index = spr_player_jetpack_dash_up
                    break
                case spr_sauce:
                    sprite_index = spr_player_jetpack_dash_up_loop
                    break
            }

            break
        case spr_sauce:
            switch jumpspr
            {
                case spr_intern_jump_grab:
                    sprite_index = spr_player_jetpack_dash_down
                    break
                case spr_sauce:
                    sprite_index = spr_player_jetpack_dash_down_loop
                    break
            }

            break
    }

    if (vsp < 0)
    {
        if (jet_jumpspr != spr_intern_jump_grab)
        {
            jumpspr = spr_intern_jump_grab
            jet_jumpspr = spr_intern_jump_grab
        }
    }
    else if (jet_jumpspr != spr_sauce)
    {
        jumpspr = spr_intern_jump_grab
        jet_jumpspr = spr_sauce
    }
    if key_down_once
    {
        bodyslam_type = 1
        if audio_is_playing(suplexsfx)
            audio_stop_sound(suplexsfx)
        bodyslam_ystart = y
        jumpspr = spr_intern_jump_grab
        image_index = 0
        vsp = -10
        state = "bodyslam"
    }
    if (move == 1)
    {
        if (jetpack_spd < -0.5)
            jetpack_spd += 0.5
        else if (jetpack_spd > 0.5)
            jetpack_spd -= 0.1
        else
            jetpack_spd = 0
    }
    else if (move == -1)
    {
        if (jetpack_spd < -0.5)
            jetpack_spd += 0.1
        else if (jetpack_spd > 0.5)
            jetpack_spd -= 0.5
        else
            jetpack_spd = 0
    }
    else if (jetpack_spd < -0.5)
        jetpack_spd += 0.3
    else if (jetpack_spd > 0.5)
        jetpack_spd -= 0.3
    else
        jetpack_spd = 0
}

