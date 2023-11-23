function scr_player_tackle2() //gml_Script_scr_player_tackle2
{
    scr_player_collision(0, 0)
    xface = image_xscale
    if (machauto > 0)
        machauto--
    if grounded
    {
        if (crouch == 1)
        {
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
        }
        else if (particle_delay > 0)
            particle_delay--
        else
        {
            instance_destroy(windeffect)
            with (instance_create_depth(x, y, -1, obj_effecttemporary))
            {
                other.windeffect = id
                targ = other.id
                sprite_index = spr_effect12
                image_xscale = other.image_xscale
            }
            with (instance_create_depth(x, y, 20, obj_effecttemporary))
            {
                sprite_index = spr_effect10
                image_xscale = other.image_xscale
            }
            particle_delay = 45
        }
    }
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
    if (machspd < 13 && crouch == 0 && move == image_xscale && tauntduration == 0)
    {
        if (character == "backy")
            machspd += 0.1
        else
            machspd += 0.05
    }
    else if (machspd > 0 && crouch == 0 && tauntduration == 0 && move != image_xscale)
        machspd -= 0.04
    if ((!audio_is_playing(tackle2_sfx)) && crouch == 0 && tauntduration == 0)
    {
        tack2 = 1
        if (!audio_is_playing(tackle2_sfx))
        {
            if (machspd >= 5)
                tackle2_sfx = audio_play_sound(sfx_mach4, 1, true)
            else
                tackle2_sfx = audio_play_sound(sfx_mach3, 1, true)
        }
    }
    audio_sound_pitch(roll_sfx, ((machspd * 0.01) + 1))
    if (key_jump_release && vsp < 0)
        vsp /= 2
    if (key_down_once && (!grounded) && vsp < 0)
        vsp = 0
    if (grabbing == 0 && key_down && spinning == 0 && rolltotackle == 1)
    {
        jumpspr = spr_sauce
        tacklehit = 1
        rolltotackle = -1
        instance_destroy(tackle_particle)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        mask_index = spr_intern_crouch_hitbox
        crouch = 1
    }
    else if ((!key_down) && crouchless == 0 && grounded)
    {
        if (rolltotackle == -1)
        {
            machspd -= 0.3
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
        if (tackle_airhit == 0)
            tackle_airhit = 1
        if (stomp == 1)
            stomp = 0
        if (slidejump == 1)
            slidejump = 0
    }
    if (tauntduration > 0)
    {
        image_speed = 0
        sprite_index = spr_player_taunt
        hsp = 0
        vsp = 0
        tauntduration--
        if (tauntduration == 0 && (!key_down))
        {
            tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
            with (tackle_particle)
            {
                persistent = 1
                image_xscale = other.image_xscale
                targ = other.id
                sprite_index = spr_effect3
            }
            if (!audio_is_playing(tackle2_sfx))
            {
                if (machspd >= 5 && slopemomentum >= 0)
                    tackle2_sfx = audio_play_sound(sfx_mach4, 1, true)
                else
                    tackle2_sfx = audio_play_sound(sfx_mach3, 1, true)
            }
        }
    }
    else
    {
        if (crouch == 1)
            image_speed = (abs(hsp) / 8)
        else if (machspd >= 5 && slopemomentum >= 0)
            image_speed = 1.75
        else
            image_speed = 1
        if (ghost_cd > 0)
            ghost_cd--
        else
        {
            with (instance_create_depth(x, y, 30, obj_machafterimage))
                alarm[0] = 10
            ghost_cd = 4
        }
        if (crouch == 1)
        {
            if grounded
                sprite_index = spr_player_roll
            else
                sprite_index = spr_player_dive
        }
        else if (machspd >= 5)
        {
            if audio_is_playing(sfx_mach3)
            {
                audio_stop_sound(tackle2_sfx)
                tackle2_sfx = audio_play_sound(sfx_mach4, 1, true)
            }
            jumpspr = spr_backy_cheesed_jump
            rolltotackle = 1
            tacklehit = 1
            if (fireparc_delay > 0)
                fireparc_delay--
            else
            {
                with (instance_create_depth(x, y, -10, obj_effecttemporary))
                    sprite_index = spr_tackleflame
                fireparc_delay = 2
            }
            if (rolltotackle == 0)
                sprite_index = spr_player_roll_getup
            else
                sprite_index = spr_player_tackle3
        }
        else if (tackle_airhit == 0)
            sprite_index = spr_player_tumble
        else if (rolltotackle == 0)
            sprite_index = spr_player_roll_getup
        else if (jumpspr == spr_intern_jump_grab)
            sprite_index = spr_player_tackle2_jump
        else if (tacklehit == 0)
            sprite_index = spr_player_tackle2_hit
        else
            sprite_index = spr_player_tackle2
        if (key_jump && grounded && (!(place_meeting(x, (y - 1), obj_solid))) && crouch == 0)
        {
            if (hitfreeze > 0)
                tackle_jump = 1
            tacklehit = 1
            rolltotackle = 1
            jumpspr = spr_intern_jump_grab
            image_index = 0
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
        scr_player_action_suplex()
        if (key_taunt && crouch == 0)
        {
            jumpspr = spr_sauce
            tacklehit = 1
            rolltotackle = 1
            instance_destroy(tackle_particle)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
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
        if (rolltotackle == 0)
            hsp = (image_xscale * (((7 + machspd) - (inwater * 1)) + slopemomentum))
        else
            hsp = (image_xscale * (((11 + machspd) - (inwater * 1)) + slopemomentum))
        var _slp = instance_place(x, (y - 1), obj_slope)
        var _wall = instance_place((x + (image_xscale * 2)), y, obj_solid)
        if (grounded && instance_place(x, (y - 1), obj_slope) && instance_place((x + (image_xscale * 2)), y, obj_solid) && _slp != _wall)
        {
            x += image_xscale
            wrun_tackle = 2
            wallrun_spd = (machspd * 2)
            instance_destroy(tackle_particle)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            state = "wallrun"
        }
        else if ((place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + 1), y, obj_breadbox_big_left))) && (!(place_meeting((x - 1), y, obj_breadbox_big_right))) && (!(place_meeting((x + image_xscale), y, obj_metalbox))) && (!(place_meeting((x + image_xscale), y, obj_slope))) && crouch == 0) || ((place_meeting((x + image_xscale), y, obj_metalbox) || place_meeting((x + image_xscale), y, obj_solid)) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + image_xscale), y, obj_slope))) && crouch == 1))
        {
            if grounded
            {
                if crouch
                {
                    scr_sound(sfx_roll_end)
                    tack0 = 0
                    tack1 = 0
                    tack2 = 0
                    machspd = 0
                    machtime = 0
                    state = "wallstun"
                    image_index = 0
                }
                else
                {
                    with (instance_create_depth((x + (image_xscale * 32)), y, -1, obj_effecttemporary))
                        sprite_index = spr_effect5
                    scr_sound(sfx_groundpound)
                    scr_sound(sfx_stun)
                    tack0 = 0
                    tack1 = 0
                    tack2 = 0
                    state = "wallstun_hard"
                    vsp = -5
                    hsp = (max((machspd * 3), 2) * (-image_xscale))
                    machspd = 0
                    hsp = clamp(hsp, -8, 8)
                    image_index = 0
                }
            }
            else if (crouch == 0)
            {
                wrun_tackle = 2
                wallrun_spd = (machspd * 2)
                instance_destroy(tackle_particle)
                if audio_is_playing(tackle2_sfx)
                    audio_stop_sound(tackle2_sfx)
                state = "wallrun"
            }
            else
            {
                scr_sound(sfx_roll_end)
                tack0 = 0
                tack1 = 0
                tack2 = 0
                machtime = 0
                machspd = 0
                state = "wallstun"
                crouch = 0
                image_index = 0
            }
            rolltotackle = 1
            tacklehit = 1
        }
        if (instance_place(x, y, obj_ladder) && tauntduration == 0 && key_up && vsp >= 0 && crouch == 0)
        {
            jumpspr = spr_sauce
            tacklehit = 1
            rolltotackle = 1
            machtime = 0
            machspd = 0
            instance_destroy(tackle_particle)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            tack0 = 0
            tack1 = 0
            tack2 = 0
            y--
            state = "ladder"
            x = instance_place(x, y, obj_ladder).x
            hsp = 0
            grabbing = 0
            spinning = 0
        }
        if (instance_place(x, (y + 1), obj_platform) && instance_place(x, (bbox_top + 1), obj_ladder) && tauntduration == 0 && key_down && vsp >= 0 && crouch == 0)
        {
            jumpspr = spr_sauce
            tacklehit = 1
            rolltotackle = 1
            machtime = 0
            machspd = 0
            instance_destroy(tackle_particle)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            tack0 = 0
            tack1 = 0
            tack2 = 0
            state = "ladder"
            y++
            x = instance_place(x, y, obj_ladder).x
            hsp = 0
            grabbing = 0
            spinning = 0
        }
    }
    if (key_up && crouch == 0 && tauntduration == 0 && grounded)
    {
        machauto = 0
        tacklehit = 1
        jumpspr = spr_sauce
        instance_destroy(tackle_particle)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        machtime = 0
        superjump_slide = 15
        rolltotackle = 1
        blink = 8
        state = "superjumpprep"
    }
    if ((!key_dash) && grounded && machauto == 0 && crouch == 0 && tauntduration == 0)
    {
        tacklehit = 1
        scr_sound(sfx_break)
        instance_destroy(tackle_particle)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        machtime = 0
        rolltotackle = 1
        tackleturnspd = abs(hsp)
        image_index = 0
        stoproll_spr = spr_backy_cheesed_jump
        tack2 = 0
        tack1 = 0
        tack0 = 0
        if (grabbing == 1 || spinning == 1)
            state = "normal"
        else
        {
            tacklestop_spr = spr_player_tackle_stop_start
            state = "tacklestop"
        }
    }
    if (((facing == 1 && key_left) || (facing == -1 && key_right)) && crouch == 0 && tauntduration == 0 && grounded && machauto == 0)
    {
        jumpspr = spr_sauce
        tacklehit = 1
        rolltotackle = 1
        machspd = 0
        scr_sound(sfx_drift)
        tackleturnspd = abs(hsp)
        tackleturnspd = clamp(tackleturnspd, 8, 16)
        instance_destroy(tackle_particle)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        sprite_index = spr_player_tackle2_turn
        image_index = 0
        state = "tackleturn"
    }
    if (crouch && (!grounded) && key_jump && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        scr_sound(sfx_bodyslamstart)
        tacklehit = 1
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

