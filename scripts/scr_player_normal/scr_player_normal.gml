function scr_player_normal() //gml_Script_scr_player_normal
{
    scr_player_collision(x, y)
    xface = image_xscale
    if (global.heat == 3 && spinning == 0 && grabbing == 0 && tauntduration == 0)
    {
        if (ghost_cd > 0)
            ghost_cd--
        else
        {
            with (instance_create_depth(x, y, 30, obj_ghostmove))
            {
                direction = irandom_range(1, 360)
                speed = 3
                dis_spd = 0.15
                plain = 0
                sprite_index = other.sprite_index
                image_index = other.image_index
                image_xscale = other.image_xscale
                image_yscale = other.image_yscale
            }
            ghost_cd = 4
        }
    }
    if (move != 0)
    {
        if (landspr == spr_sauce)
            landspr = spr_backy_cheesed_jump
        if (walk_acc < 1)
            walk_acc += 0.06
        else
            walk_acc = 1
    }
    else
        walk_acc = 0.2
    if (key_dash && crouch == 0 && tauntduration == 0 && longfall_time != -1 && grabbing == 0 && spinning == 0)
    {
        if (grounded && (!(place_meeting((x + image_xscale), y, obj_solid))))
        {
            tack0 = 1
            jumpspr = spr_sauce
            image_index = 0
            machwind = 0
            state = "tackle0"
        }
    }
    if (inwater_shallow == 0 && inwater)
    {
    }
    else if (grabbing == 0 && spinning == 0 && move != 0 && crouch == 0 && grounded)
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
    }
    if (key_jump_release && vsp < 0 && spinning == 0)
        vsp = 0
    if (move == 0 && grounded && tauntduration == 0 && crouch == 0 && spinning == 0 && inwater == 0)
    {
        if (voice_idletime < 600)
            voice_idletime++
        else
        {
            scr_player_action_voice_idle()
            voice_idletime = 0
        }
        if (idling_time < 140)
            idling_time++
        else if (idling_spr == -4)
        {
            image_index = 0
            idling_spr = choose(spr_player_idling1, spr_player_idling2, spr_player_idling3)
        }
    }
    else
    {
        voice_idletime = 0
        idling_spr = -4
        idling_time = 0
    }
    if grounded
    {
        if (landsfx == 1)
        {
            if (spinning == 0 && landspr == spr_backy_cheesed_jump)
            {
                image_index = 0
                walk_acc = 0.5
                landspr = spr_intern_jump_grab
            }
            jumpspr = spr_sauce
            scr_1sound(sfx_land)
            landsfx = 0
        }
        if (longfall_time == -1)
        {
            with (obj_enemy)
            {
                var cam = view_camera[0]
                var x1 = camera_get_view_x(cam)
                var y1 = camera_get_view_y(cam)
                var x2 = (x1 + camera_get_view_width(cam))
                var y2 = (y1 + camera_get_view_height(cam))
                if point_in_rectangle(x, y, (x1 - (sprite_width / 2)), (y1 - (sprite_height / 2)), (x2 + (sprite_width / 2)), (y2 + (sprite_height / 2)))
                    vsp = -7
            }
            with (obj_camera)
                shk_strength += 4
            scr_sound(sfx_groundpound)
            bodyslam_serious = 0
            instance_destroy(bodyslam_particle)
            image_index = 0
            state = "longfall_hit"
        }
        if (stomp == 1)
            stomp = 0
        if (slidejump == 1)
            slidejump = 0
        if (jumpspr == spr_bg_freezer2a || jumpspr == spr_lamp)
            jumpspr = spr_sauce
    }
    else if (landsfx == 0)
        landsfx = 1
    if ((!grounded) && key_down_once && tauntduration == 0)
    {
        if (spinning == 1)
        {
        }
        else
        {
            if (global.mayogun == 1)
            {
                scr_1sound(sfx_killingblow)
                scr_mayogun_bulletcreate_down()
            }
            else
                scr_sound(sfx_bodyslamstart)
            chargeslam_spd = 0
            bodyslam_type = 1
            if audio_is_playing(suplexsfx)
                audio_stop_sound(suplexsfx)
            bodyslam_ystart = y
            jumpspr = spr_intern_jump_grab
            image_index = 0
            if (character == "intern")
                vsp = -12
            state = "bodyslam"
        }
    }
    if (grabbing == 0 && spinning == 0 && tauntduration == 0 && (!grounded) && jetjump == 0 && (!inwater))
    {
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
    }
    else
    {
        longfall_time = 75
        bodyslam_serious = 0
        instance_destroy(bodyslam_particle)
    }
    if (crouch == 0)
        mask_index = spr_intern_hitbox
    else
        mask_index = spr_intern_crouch_hitbox
    if ((grabbing == 0 && grounded && key_down && spinning == 0) || crouchless == 1)
    {
        if (landspr == spr_sauce)
            landspr = spr_backy_cheesed_jump
        crouch = 1
    }
    if ((!key_down) && crouchless == 0 && grounded)
        crouch = 0
    if (tauntduration > 0)
    {
        if (landspr == spr_sauce)
            landspr = spr_backy_cheesed_jump
        image_speed = 0
        sprite_index = spr_player_taunt
        hsp = 0
        vsp = 0
        tauntduration--
    }
    else
    {
        image_speed = 1
        if (grabbing == 1 || spinning == 1)
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
            if (grabbing == 1)
            {
                if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x - 1), y, obj_breadbox_big_left))) && (!(place_meeting((x + 1), y, obj_breadbox_big_right))) && (!(place_meeting((x + image_xscale), y, obj_slope))))
                {
                    if grounded
                    {
                        if audio_is_playing(suplexsfx)
                            audio_stop_sound(suplexsfx)
                        grabbing = 0
                        state = "wallstun"
                        image_index = 0
                    }
                }
                if (grabonground == -1)
                    sprite_index = spr_player_grab_air_loop
                else
                    sprite_index = spr_player_grab
            }
            if (spinning == 1)
            {
                if ((place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + 1), y, obj_breadbox_big_left))) && (!(place_meeting((x - 1), y, obj_breadbox_big_right))) && (!(place_meeting((x + image_xscale), y, obj_slope)))) || place_meeting((x + image_xscale), y, obj_fridge))
                {
                    if grounded
                    {
                        if audio_is_playing(suplexsfx)
                            audio_stop_sound(suplexsfx)
                        spinning = 0
                        scr_sound(sfx_stun)
                        scr_player_perform_spinhit(1, (-image_xscale), 8, -7, 0)
                        image_index = 0
                    }
                    else
                    {
                        spinning = 0
                        if audio_is_playing(suplexsfx)
                            audio_stop_sound(suplexsfx)
                        if key_dash
                            state = "wallrun"
                        else
                        {
                            scr_sound(sfx_stun)
                            scr_player_perform_spinhit(1, (-image_xscale), 8, -7, 0)
                        }
                    }
                }
                if (spinspr == spr_player_airhit1)
                {
                    switch jumpspr
                    {
                        case spr_intern_jump_grab:
                            sprite_index = spr_player_airhit1
                            break
                        case spr_sauce:
                            sprite_index = spr_player_airhit1_loop
                            break
                    }

                }
                else if (spinspr == spr_player_airhit2)
                {
                    switch jumpspr
                    {
                        case spr_intern_jump_grab:
                            sprite_index = spr_player_airhit2
                            break
                        case spr_sauce:
                            sprite_index = spr_player_airhit2_loop
                            break
                    }

                }
                else
                    sprite_index = spinspr
            }
        }
        else if grounded
        {
            if (crouch == 1)
            {
                if (move != 0)
                {
                    if (global.mayogun == 1)
                        sprite_index = spr_player_mayogun_walk_crouch
                    else
                        sprite_index = spr_player_crouch_walk
                }
                else if (global.mayogun == 1)
                    sprite_index = spr_player_mayogun_idle_crouch
                else
                    sprite_index = spr_player_crouch_idle
            }
            else if (move != 0)
            {
                switch landspr
                {
                    case spr_intern_jump_grab:
                        if (inwater && inwater_shallow == 0)
                            sprite_index = spr_player_inwater
                        else if (global.mayogun == 1)
                            sprite_index = spr_player_mayogun_jump_land
                        else
                            sprite_index = spr_player_jump_land_walk
                        break
                    default:
                        if (inwater && inwater_shallow == 0)
                            sprite_index = spr_player_inwater
                        else if (global.mayogun == 1)
                            sprite_index = spr_player_mayogun_walk
                        else if (global.escape == 1 && global.exittimer_min == 0 && global.exittimer_sec == 0)
                            sprite_index = spr_player_walk_tired
                        else if (global.heat == 3)
                            sprite_index = spr_player_walk_hot
                        else
                            sprite_index = spr_player_walk
                        break
                }

            }
            else
            {
                switch landspr
                {
                    case spr_intern_jump_grab:
                        if (inwater && inwater_shallow == 0)
                            sprite_index = spr_player_inwater
                        else if (global.mayogun == 1)
                            sprite_index = spr_player_mayogun_jump_land
                        else
                            sprite_index = spr_player_jump_land
                        break
                    case spr_sauce:
                        sprite_index = spr_player_longfall_land_recover
                        break
                    default:
                        if (inwater && inwater_shallow == 0)
                            sprite_index = spr_player_inwater
                        else if (global.mayogun == 1)
                            sprite_index = spr_player_mayogun_idle
                        else if (global.escape == 1)
                        {
                            if (global.exittimer_min == 0 && global.exittimer_sec == 0)
                                sprite_index = spr_player_idle_tired
                            else
                                sprite_index = spr_player_idle_haste
                        }
                        else if (global.heat == 3)
                            sprite_index = spr_player_idle_hot
                        else if (idling_spr != -4)
                            sprite_index = idling_spr
                        else
                            sprite_index = spr_player_idle
                        break
                }

            }
        }
        else if (longfall_time == -1)
        {
            if (tumblefall == 1)
                sprite_index = spr_player_tumblefall
            else
                sprite_index = spr_player_longfall
        }
        else if (crouch == 1)
        {
            if (global.mayogun == 1)
                sprite_index = spr_player_mayogun_idle_crouch_jump
            else
                sprite_index = spr_player_crouch_jump
        }
        else if inwater
        {
            switch jumpspr
            {
                case spr_intern_jump_grab:
                    sprite_index = spr_player_inwater_swim
                    break
                case spr_sauce:
                    sprite_index = spr_player_inwater
                    break
                case spr_lamp:
                    sprite_index = spr_player_tumblefall
                    break
            }

        }
        else if (global.mayogun == 1)
        {
            switch jumpspr
            {
                case spr_intern_jump_grab:
                    sprite_index = spr_player_mayogun_jump
                    break
                case spr_sauce:
                    sprite_index = spr_player_mayogun_jump_air
                    break
                case spr_ghostic_jump:
                    sprite_index = spr_player_springjump
                    break
                case spr_bg_freezer2a:
                    sprite_index = spr_player_suplexcancel
                    break
                case spr_lamp:
                    sprite_index = spr_player_tumblefall
                    break
            }

        }
        else if (jetjump == 1)
        {
            switch jumpspr
            {
                case spr_intern_jump_grab:
                    sprite_index = spr_player_jetpack_jump
                    break
                case spr_sauce:
                    sprite_index = spr_player_jetpack_jump_air
                    break
            }

        }
        else if (stomp == 1)
        {
            switch jumpspr
            {
                case spr_intern_jump_grab:
                    sprite_index = spr_player_stompjump
                    break
                case spr_sauce:
                    sprite_index = spr_player_stompjump_air
                    break
            }

        }
        else if (slidejump == 1)
        {
            switch jumpspr
            {
                case spr_intern_jump_grab:
                    sprite_index = spr_player_slidejump
                    break
                case spr_sauce:
                    sprite_index = spr_player_slidejump_air
                    break
            }

        }
        else
        {
            switch jumpspr
            {
                case spr_intern_jump_grab:
                    sprite_index = spr_player_jump
                    break
                case spr_sauce:
                    sprite_index = spr_player_jump_air
                    break
                case spr_ghostic_jump:
                    sprite_index = spr_player_springjump
                    break
                case spr_bg_freezer2a:
                    sprite_index = spr_player_suplexcancel
                    break
                case spr_lamp:
                    sprite_index = spr_player_tumblefall
                    break
            }

        }
        if (key_jump && (!(place_meeting(x, (y - 1), obj_solid))))
        {
            if grounded
            {
                if (spinning == 1)
                {
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
                else
                {
                    if (inwater_shallow == 0 && inwater)
                    {
                    }
                    else
                    {
                        with (instance_create_depth(x, y, 10, obj_effecttemporary))
                            sprite_index = spr_effect6
                    }
                    if inwater
                    {
                        scr_sound(choose(sfx_swim1, sfx_swim2))
                        if (inwater_shallow == 1)
                        {
                            scr_sound(sfx_jump)
                            vsp = -12
                        }
                        else
                            vsp = -10
                    }
                    else
                    {
                        scr_sound(sfx_jump)
                        if crouch
                            vsp = -9
                        else
                            vsp = -13
                    }
                    image_index = 0
                    jumpspr = spr_intern_jump_grab
                }
            }
            else if inwater
            {
                scr_sound(choose(sfx_swim1, sfx_swim2))
                vsp = -10
                image_index = 0
                jumpspr = spr_intern_jump_grab
            }
            else if (jetjump == 0 && character == "backy")
            {
                with (instance_create_depth(x, (y + 100), 10, obj_effecttemporary))
                    sprite_index = spr_effect7
                scr_sound(sfx_woosh)
                image_index = 0
                jumpspr = spr_intern_jump_grab
                vsp = -12
                jetjump = 1
            }
        }
        if grounded
        {
            if (grabonground == -1)
            {
                if audio_is_playing(suplexsfx)
                    audio_stop_sound(suplexsfx)
                if key_dash
                {
                    if (spinspr == spr_player_airhit1 || spinspr == spr_player_airhit2 || spinspr == spr_player_machgrab)
                    {
                        jumpspr = spr_sauce
                        tack0 = 1
                        tack1 = 1
                        tack2 = 1
                        slope_getupspd = -1
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
                        rolltotackle = 1
                        state = "tackle2"
                    }
                    else
                    {
                        jumpspr = spr_sauce
                        tack0 = 1
                        tack1 = 1
                        machtime = 20
                        state = "tackle1"
                    }
                }
                spinning = 0
                grabbing = 0
                grabonground = 0
            }
        }
        else if (spinning == 1)
            grabonground = -1
        if ((grabbing == 1 || spinning == 1) && key_down_once && grounded)
        {
            slidesfx = audio_play_sound(sfx_dive, 1, false)
            jumpspr = spr_intern_jump_grab
            if audio_is_playing(suplexsfx)
                audio_stop_sound(suplexsfx)
            grabbing = 0
            spinning = 0
            crouchslide_dur = 12
            crouchslide_beforend = (crouchslide_dur * 4)
            crouchslide_machable = 25
            state = "crouchslide"
        }
        if (grabbing == 1 && ((facing == 1 && key_left) || (facing == -1 && key_right)))
        {
            instance_destroy(windeffect)
            if audio_is_playing(suplexsfx)
                audio_stop_sound(suplexsfx)
            grabbing = 0
        }
        if (spinning == 1 && character == "intern" && ((facing == 1 && key_left) || (facing == -1 && key_right)))
        {
            image_index = 0
            jumpspr = spr_bg_freezer2a
            blink = 4
            instance_destroy(windeffect)
            if audio_is_playing(suplexsfx)
                audio_stop_sound(suplexsfx)
            grabonground = 0
            spinning = 0
        }
        scr_player_action_suplex()
        if (spinning == 1)
        {
            if (spindur > 0)
            {
                if key_dash
                    spindur -= 1.75
                else
                    spindur--
            }
            else
            {
                spinning = 0
                grabonground = 0
                if key_dash
                {
                    if (spinspr == spr_player_airhit1 || spinspr == spr_player_airhit2 || spinspr == spr_player_machgrab)
                    {
                        jumpspr = spr_sauce
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
                    else
                    {
                        jumpspr = spr_sauce
                        tack0 = 1
                        tack1 = 1
                        machtime = 30
                        state = "tackle1"
                    }
                }
            }
        }
        scr_gravity()
        if (grabbing == 1 || spinning == 1)
        {
            if (spinspr == spr_player_airhit1 || spinspr == spr_player_airhit2 || spinspr == spr_player_machgrab)
                hsp = (facing * (machgrab_spd - (inwater * 1)))
            else
                hsp = (facing * (10 - (inwater * 1)))
        }
        else if (slidejump == 1)
        {
            if place_meeting((x + image_xscale), y, obj_solid)
                crouchslide_force = 0
            hsp = (image_xscale * ((7 * crouchslide_force) - (inwater * 1)))
            if (crouchslide_force > 0)
                crouchslide_force -= 0.008
        }
        else if (crouch == 1)
            hsp = (move * (5 - (inwater * 1)))
        else
            hsp = ((move * (6 - (inwater * 1))) * walk_acc)
        if (instance_place(x, y, obj_ladder) && tauntduration == 0 && crouch == 0 && key_up && vsp >= 0)
        {
            y--
            state = "ladder"
            x = instance_place(x, y, obj_ladder).x
            hsp = 0
            grabbing = 0
            spinning = 0
        }
        if (instance_place(x, (y + 1), obj_platform) && instance_place(x, (bbox_top + 1), obj_ladder) && tauntduration == 0 && key_down && vsp >= 0)
        {
            state = "ladder"
            y++
            x = instance_place(x, (y + 1), obj_ladder).x
            hsp = 0
            grabbing = 0
            spinning = 0
        }
    }
    if (key_taunt && tauntduration == 0 && grabbing == 0 && spinning == 0 && crouch == 0 && state == "normal")
    {
        instance_create_depth(x, (y + 16), 10, obj_effecttemporary)
        tauntduration = 18
        if (global.stylin_score >= 10 && key_up)
        {
            scr_sound(sfx_supertaunt)
            jumpspr = spr_intern_jump_grab
            supertaunt_spr = choose(spr_player_supertaunt2, spr_player_supertaunt3)
            image_index = 0
            state = "supertaunt"
            with (obj_enemy)
            {
                cam = view_camera[0]
                x1 = camera_get_view_x(cam)
                y1 = camera_get_view_y(cam)
                x2 = (x1 + camera_get_view_width(cam))
                y2 = (y1 + camera_get_view_height(cam))
                if point_in_rectangle(x, y, x1, y1, x2, y2)
                {
                    state = "hitfreeze"
                    curx = x
                    cury = y
                    hitfreeze = 250
                    hp--
                }
            }
            global.stylin_score = 0
        }
        else
        {
            sfxtaunt = audio_play_sound(sfx_taunt, 1, false)
            audio_sound_pitch(sfxtaunt, random_range(0.95, 1.05))
            image_index = irandom_range(1, 8)
        }
    }
}

