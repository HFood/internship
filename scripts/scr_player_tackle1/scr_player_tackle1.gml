function scr_player_tackle1() //gml_Script_scr_player_tackle1
{
    scr_player_collision(0, 0)
    xface = image_xscale
    if (crouch == 1)
    {
        if grounded
        {
            if (!audio_is_playing(roll_sfx))
                roll_sfx = audio_play_sound(sfx_roll, 1, true)
        }
        else if audio_is_playing(roll_sfx)
            audio_stop_sound(roll_sfx)
    }
    audio_sound_pitch(roll_sfx, ((machspd * 0.01) + 1))
    if (grabbing == 0 && key_down && spinning == 0 && rolltotackle == 1)
    {
        rolltotackle = -1
        jumpspr = spr_sauce
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        mask_index = spr_intern_crouch_hitbox
        crouch = 1
    }
    else if ((!key_down) && crouchless == 0 && grounded)
    {
        if (rolltotackle == -1)
        {
            scr_1sound(sfx_rollgetup)
            image_index = 0
            rolltotackle = 0
        }
        if audio_is_playing(roll_sfx)
            audio_stop_sound(roll_sfx)
        crouch = 0
        mask_index = spr_intern_hitbox
    }
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
    if ((!audio_is_playing(tackle1_sfx)) && crouch == 0)
    {
        tack1 = 1
        tackle1_sfx = audio_play_sound(sfx_mach2, 1, true)
    }
    if (key_jump_release && vsp < 0)
        vsp /= 2
    if (key_down_once && (!grounded) && vsp < 0)
        vsp = 0
    if grounded
    {
        if ((!audio_is_playing(tackle1_sfx)) && crouch == 0)
            tackle1_sfx = audio_play_sound(sfx_mach2, 1, true)
        if (stomp == 1)
            stomp = 0
        if (slidejump == 1)
            slidejump = 0
    }
    else if audio_is_playing(tackle1_sfx)
        audio_stop_sound(tackle1_sfx)
    if instance_place(x, (y + 1), obj_slope)
    {
        with (instance_place(x, (y + 1), obj_slope))
        {
            if (sign(image_xscale) == other.image_xscale)
            {
                if (other.slopemomentum > 0.25)
                    other.slopemomentum -= 0.75
                else if (other.slopemomentum < -0.25)
                    other.slopemomentum += 0.75
                else
                    other.slopemomentum = 0
            }
            else
                other.slopemomentum += 0.4
        }
    }
    else if (slopemomentum > 0.25)
        slopemomentum -= 0.75
    else if (slopemomentum < -0.25)
        slopemomentum += 0.75
    else
        slopemomentum = 0
    if (tauntduration > 0)
    {
        image_speed = 0
        sprite_index = spr_player_taunt
        hsp = 0
        vsp = 0
        tauntduration--
    }
    else
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
        if (crouch == 1)
        {
            image_speed = (abs(hsp) / 8)
            if grounded
                sprite_index = spr_player_roll
            else
                sprite_index = spr_player_dive
        }
        else if grounded
        {
            if (rolltotackle == 0)
                sprite_index = spr_player_roll_getup
            else
            {
                image_speed = 1.75
                sprite_index = spr_player_tackle1
            }
        }
        else
        {
            image_speed = 1
            switch jumpspr
            {
                case spr_intern_jump_grab:
                    sprite_index = spr_player_tackle1_jump
                    break
                case spr_sauce:
                    sprite_index = spr_player_tackle1_jump_air
                    break
            }

        }
        if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + 1), y, obj_breadbox_big_left))) && (!(place_meeting((x - 1), y, obj_breadbox_big_right))) && (!(place_meeting((x + image_xscale), y, obj_slope))))
        {
            if grounded
            {
                if crouch
                {
                    scr_sound(sfx_roll_end)
                    tack0 = 0
                    tack1 = 0
                    tack2 = 0
                    state = "wallstun"
                    image_index = 0
                }
                else
                {
                    tack0 = 0
                    tack1 = 0
                    tack2 = 0
                    if (!grounded)
                        vsp -= 3
                    state = "wallstun"
                    image_index = 0
                }
            }
            else if crouch
            {
                scr_sound(sfx_roll_end)
                tack0 = 0
                tack1 = 0
                tack2 = 0
                state = "wallstun"
                image_index = 0
            }
            else
            {
                wrun_tackle = 1
                if audio_is_playing(tackle1_sfx)
                    audio_stop_sound(tackle1_sfx)
                state = "wallrun"
            }
        }
        if (key_jump && grounded && (!(place_meeting(x, (y - 1), obj_solid))) && crouch == 0)
        {
            machtime -= 10
            image_index = 0
            jumpspr = spr_intern_jump_grab
            scr_sound(sfx_jump)
            vsp = -11
        }
        if grounded
        {
            if (grabonground == -1)
            {
                if audio_is_playing(suplexsfx)
                    audio_stop_sound(suplexsfx)
                grabbing = 0
                grabonground = 0
            }
        }
        else
            grabonground = -1
        if (crouch == 0)
            scr_player_action_suplex()
        if (key_taunt && crouch == 0)
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
                    var cam = view_camera[0]
                    var x1 = camera_get_view_x(cam)
                    var y1 = camera_get_view_y(cam)
                    var x2 = (x1 + camera_get_view_width(cam))
                    var y2 = (y1 + camera_get_view_height(cam))
                    if point_in_rectangle(x, y, x1, y1, x2, y2)
                    {
                        state = "hitfreeze"
                        curx = x
                        cury = y
                        hitfreeze = 250
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
        if (crouch == 1)
            vsp = 15
        else
            scr_gravity()
        if (mach2acc < 9)
        {
            hsp = (image_xscale * ((mach2acc - (inwater * 1)) + slopemomentum))
            mach2acc += 0.2
        }
        else
            hsp = (image_xscale * ((9 - (inwater * 1)) + slopemomentum))
        if (instance_place(x, y, obj_ladder) && tauntduration == 0 && key_up && vsp >= 0 && crouch == 0)
        {
            instance_destroy(tackle_particle)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            tack0 = 0
            tack1 = 0
            y--
            state = "ladder"
            x = instance_place(x, y, obj_ladder).x
            hsp = 0
            grabbing = 0
            spinning = 0
        }
        if (instance_place(x, (y + 1), obj_platform) && instance_place(x, (bbox_top + 1), obj_ladder) && tauntduration == 0 && key_down && vsp >= 0)
        {
            instance_destroy(tackle_particle)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            tack0 = 0
            tack1 = 0
            state = "ladder"
            y++
            x = instance_place(x, y, obj_ladder).x
            hsp = 0
            grabbing = 0
            spinning = 0
        }
    }
    if ((((!key_dash) && grounded) || spinning == 1 || grabbing == 1) && tauntduration == 0 && crouch == 0)
    {
        if ((!key_dash) && grounded)
            scr_sound(sfx_break)
        instance_destroy(tackle_particle)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        machtime = 0
        tackleturnspd = abs(hsp)
        image_index = 0
        tack0 = 0
        tack1 = 0
        if (grabbing == 1 || spinning == 1)
            state = "normal"
        else
        {
            tacklestop_spr = spr_player_tackle_stop_start
            state = "tacklestop"
        }
    }
    else if (spinning == 0 && grabbing == 0 && grounded && crouch == 0 && mach2acc >= 9)
    {
        if (machtime < 40)
        {
            machtime += (1 + (slopemomentum * 0.5))
            if (machtime == 38)
                blink = 8
        }
        else
        {
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
            state = "tackle2"
        }
    }
    if (((facing == 1 && key_left) || (facing == -1 && key_right)) && tauntduration == 0 && grounded && crouch == 0)
    {
        machspd = 0
        scr_sound(sfx_drift)
        tackleturnspd = abs(hsp)
        instance_destroy(tackle_particle)
        sprite_index = spr_player_tackle1_turn
        image_index = 0
        state = "tackleturn"
    }
    if (crouch && (!grounded) && key_jump && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        scr_sound(sfx_bodyslamstart)
        tacklehit = -1
        instance_destroy(tackle_particle)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        if audio_is_playing(tackle0_sfx)
            audio_stop_sound(tackle0_sfx)
        machtime = 0
        rolltotackle = 1
        tack2 = 0
        tack1 = 0
        tack0 = 0
        chargeslam_spd = hsp
        bodyslam_type = 1
        if audio_is_playing(suplexsfx)
            audio_stop_sound(suplexsfx)
        bodyslam_ystart = y
        jumpspr = spr_ghostic_jump
        vsp = -8
        state = "bodyslam"
    }
}

