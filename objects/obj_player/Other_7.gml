switch sprite_index
{
    case spr_player_fishride_grab_idle:
        spinning = 0
        break
    case spr_player_mayogun_pickup:
        state = "normal"
        break
    case spr_player_mayogun_shoot:
        state = "normal"
        image_xscale = uppercut_xsc
        break
    case spr_player_supertaunt2:
        jumpspr = spr_sauce
        state = "normal"
        with (obj_enemy)
        {
            var cam = view_camera[0]
            var x1 = camera_get_view_x(cam)
            var y1 = camera_get_view_y(cam)
            var x2 = (x1 + camera_get_view_width(cam))
            var y2 = (y1 + camera_get_view_height(cam))
            if (point_in_rectangle(x, y, x1, y1, x2, y2) && state == "hitfreeze")
            {
                hitfreeze = 0
                hp--
            }
        }
        break
    case spr_player_supertaunt3:
        jumpspr = spr_sauce
        state = "normal"
        with (obj_enemy)
        {
            cam = view_camera[0]
            x1 = camera_get_view_x(cam)
            y1 = camera_get_view_y(cam)
            x2 = (x1 + camera_get_view_width(cam))
            y2 = (y1 + camera_get_view_height(cam))
            if (point_in_rectangle(x, y, x1, y1, x2, y2) && state == "hitfreeze")
            {
                hitfreeze = 0
                hp--
            }
        }
        break
    case spr_player_sodaride_start:
        soda_state = 1
        break
    case spr_player_bashmove_air_start:
        spinspr = spr_player_bashmove_air
        break
    case spr_player_bashmove1:
        spinspr = spr_player_bashmove1_loop
        break
    case spr_player_jump:
        jumpspr = spr_sauce
        break
    case spr_player_inwater_swim:
        jumpspr = spr_sauce
        break
    case spr_player_mayogun_jump:
        jumpspr = spr_sauce
        break
    case spr_player_jetpack_jump:
        jumpspr = spr_sauce
        break
    case spr_player_onfire_jump:
        jumpspr = spr_sauce
        break
    case spr_player_suplexcancel:
        jumpspr = spr_sauce
        break
    case spr_player_tackle2_jump:
        jumpspr = spr_sauce
        break
    case spr_player_jump_land:
        landspr = spr_backy_cheesed_jump
        break
    case spr_player_mayogun_jump_land:
        landspr = spr_backy_cheesed_jump
        break
    case spr_player_jump_land_walk:
        landspr = spr_backy_cheesed_jump
        break
    case spr_player_jump_land_grab:
        landspr = spr_backy_cheesed_jump
        break
    case spr_player_walljump:
        jumpspr = spr_sauce
        break
    case spr_player_airhit1:
        jumpspr = spr_sauce
        break
    case spr_player_airhit2:
        jumpspr = spr_sauce
        break
    case spr_player_tumblejump:
        jumpspr = spr_sauce
        break
    case spr_player_jump_grab:
        jumpspr = spr_sauce
        break
    case spr_player_cheesed_jump:
        jumpspr = spr_sauce
        break
    case spr_player_tackle1_jump:
        jumpspr = spr_sauce
        break
    case spr_player_slidejump:
        jumpspr = spr_sauce
        break
    case spr_player_stompjump:
        jumpspr = spr_sauce
        break
    case spr_player_crouchslide:
        jumpspr = spr_sauce
        break
    case spr_player_bodyslam:
        jumpspr = spr_sauce
        break
    case spr_player_mayogun_bodyslam_start:
        jumpspr = spr_sauce
        break
    case spr_player_springjump:
        jumpspr = spr_sauce
        break
    case spr_player_grab:
        grabbing = 0
        break
    case spr_player_stoproll:
        stoproll_spr = spr_sauce
        break
    case spr_player_blewrecover:
        invincibility = 45
        state = "normal"
        break
    case spr_player_wallhug:
        state = "normal"
        grabonground = 0
        break
    case spr_player_wallstun_hard:
        state = "normal"
        image_xscale = (-image_xscale)
        landspr = spr_backy_cheesed_jump
        break
    case spr_player_throw_something:
        state = "normal"
        break
    case spr_player_spinhit1:
        if (spinhit_moving == 1)
        {
            image_xscale = spinhit_dir
            spinhit_moving = 0
        }
        state = "normal"
        break
    case spr_player_spinhit2:
        if (spinhit_moving == 1)
        {
            image_xscale = spinhit_dir
            spinhit_moving = 0
        }
        state = "normal"
        break
    case spr_player_spinhit3:
        if (spinhit_moving == 1)
        {
            image_xscale = spinhit_dir
            spinhit_moving = 0
        }
        state = "normal"
        break
    case spr_player_spinhit4:
        if (spinhit_moving == 1)
        {
            image_xscale = spinhit_dir
            spinhit_moving = 0
        }
        state = "normal"
        break
    case spr_player_suplexpunch_air:
        if (spinhit_moving == 1)
        {
            image_xscale = spinhit_dir
            spinhit_moving = 0
        }
        state = "normal"
        break
    case spr_player_parry1:
        if (spinhit_moving == 1)
        {
            image_xscale = spinhit_dir
            spinhit_moving = 0
        }
        state = "normal"
        break
    case spr_player_parry2:
        if (spinhit_moving == 1)
        {
            image_xscale = spinhit_dir
            spinhit_moving = 0
        }
        state = "normal"
        break
    case spr_player_parry3:
        if (spinhit_moving == 1)
        {
            image_xscale = spinhit_dir
            spinhit_moving = 0
        }
        state = "normal"
        break
    case spr_player_longfall_land:
        state = "normal"
        landspr = spr_sauce
        break
    case spr_player_longfall_land_recover:
        landspr = spr_backy_cheesed_jump
        break
    case spr_player_faceslide:
        state = "normal"
        break
    case spr_player_shock:
        switch state
        {
            case "doorexit":
                state = "normal"
                break
            case "timesup":
                image_index = (image_number - 1)
                image_speed = 0
                break
        }

        break
    case spr_player_exit2:
        if (doorexit_shocked == 1)
        {
            with (obj_exit)
            {
                ds_list_add(global.saveroom, id)
                itsokay = 1
            }
            scr_sound(sfx_groundpound)
            doorexit_state = "fear"
            doorexit_shocked = 0
        }
        else if (isghost == 1)
            state = "ghost"
        else
            state = "normal"
        break
    case spr_player_keyget:
        state = "normal"
        break
    case spr_player_enter:
        if (state == "roomenter")
        {
            with (instance_place(x, y, obj_nextroom))
            {
                room_goto(rm)
                other.image_xscale = sign(image_xscale)
            }
            if (isghost == 1)
                state = "ghost"
            else if (tack2 == 1)
                state = "tackle2"
            else if (tack1 == 1)
                state = "tackle1"
            else
            {
                tack2 = 0
                tack1 = 0
                tack0 = 0
                state = "normal"
            }
        }
        else if (state == "escapeenter")
        {
            with (obj_exit)
                nowyou = 1
        }
        else
        {
            room_goto(door_rm)
            state = "doorexit"
            image_index = 0
        }
        break
    case spr_player_entergate:
        if (object_index != obj_player2)
        {
            switch door_rm
            {
                case rm_tutorial1:
                    global.level = "tutorial"
                    break
                case rm_rooftop1:
                    global.level = "rooftop"
                    break
                case rm_ancient1:
                    global.level = "ancient"
                    break
                case rm_cave1:
                    global.level = "cave"
                    break
                case rm_resort1:
                    global.level = "resort"
                    break
                case rm_urban1:
                    global.level = "urban"
                    break
                case rm_crateburg1:
                    global.level = "crateburg"
                    break
                case rm_freezer1:
                    global.level = "freezer"
                    break
                case rm_circus1:
                    global.level = "circus"
                    break
                case rm_train1:
                    global.level = "train"
                    break
                case rm_funhouse1:
                    global.level = "funhouse"
                    break
                case rm_ship1:
                    global.level = "ship"
                    break
                case rm_roomomo:
                    global.level = "ship"
                    break
                case rm_streets1:
                    global.level = "ship"
                    break
            }

            ini_open(global.savedata_ini)
            global.srank = ini_read_real("srank", global.level, 1000)
            global.arank = (global.srank / 2)
            global.brank = ((global.srank / 2) * 0.66)
            global.crank = ((global.srank / 2) * 0.33)
            global.lvl_exit_x = x
            global.lvl_exit_y = y
            global.lvl_exit_rm = room
            ini_close()
            room_goto(door_rm)
            scr_levelmusic()
            instance_destroy()
        }
        break
    case spr_player_doorkey_enter:
        with (door_id)
            doit = 1
        break
    case spr_player_ghost_start:
        ghost_state = "idle"
        break
    case spr_player_ghost_jump:
        ghost_state = "idle"
        break
    case spr_player_ghost_end:
        image_xscale = 1
        ghost_state = "idle"
        state = "normal"
        break
    case spr_player_bodyslam_uppunchafter:
        vsp = -10
        state = "bodyslam"
        break
    case spr_player_uppunch:
        sprite_index = spr_player_uppunch_loop
        break
    case spr_player_uppunch_midair:
        sprite_index = spr_player_uppunch_loop
        break
    case spr_player_idling1:
        idling_spr = -4
        idling_time = 0
        break
    case spr_player_idling2:
        idling_spr = -4
        idling_time = 0
        break
    case spr_player_idling3:
        idling_spr = -4
        idling_time = 0
        break
    case spr_player_ceilinghit:
        state = "normal"
        jumpspr = spr_lamp
        break
    case spr_player_superjump_cancel:
        image_speed = 1
        state = "superjump_kick"
        vsp = -4
        break
    case spr_player_superjump_cancel_claw:
        image_speed = 0
        image_index = (image_number - 1)
        break
    case spr_player_tackle1_turn:
        image_speed = 0
        image_index = (image_number - 1)
        break
    case spr_player_tackle2_turn:
        image_speed = 0
        image_index = (image_number - 1)
        break
    case spr_player_tackle_stop_start:
        tacklestop_spr = spr_player_tackle_stop
        break
    case spr_player_tackle_stop_end:
        state = "normal"
        break
    case spr_player_uppercut:
        image_speed = 0
        image_index = (image_number - 1)
        break
    case spr_player_roll_getup:
        rolltotackle = 1
        break
    case spr_player_tackle2_hit:
        tacklehit = 1
        break
    case spr_player_cheesed_start:
        cheesed_state = "normal"
        break
    case spr_player_tackle0:
        tack1 = 1
        state = "tackle1"
        if audio_is_playing(tackle0_sfx)
            audio_stop_sound(tackle0_sfx)
        break
    case spr_player_jetpack_windup:
        scr_sound(sfx_superjump)
        if key_up
        {
            with (instance_create_depth(x, y, 10, obj_effecttemporary))
                sprite_index = spr_effect19
            state = "superjump"
        }
        else if key_jump_hold
        {
            jetpack_spd = (12 * image_xscale)
            jumpspr = spr_intern_jump_grab
            jet_jumpspr = spr_intern_jump_grab
            vsp = -11
            state = "jetpack_dash"
        }
        else
        {
            tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
            with (tackle_particle)
            {
                persistent = 1
                image_xscale = other.image_xscale
                targ = other.id
                sprite_index = spr_effect3
            }
            jetpack_spd = 30
            state = "jetpack_run"
        }
        break
    case spr_player_jetpack_dash_up:
        jumpspr = spr_sauce
        break
    case spr_player_jetpack_dash_down:
        jumpspr = spr_sauce
        break
}

