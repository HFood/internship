function scr_player_walljump() //gml_Script_scr_player_walljump
{
    scr_player_collision(0, 0)
    scr_gravity()
    if audio_is_playing(tackle2_sfx)
        audio_stop_sound(tackle2_sfx)
    if audio_is_playing(tackle1_sfx)
        audio_stop_sound(tackle1_sfx)
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
            with (instance_create_depth(x, y, 30, obj_machafterimage))
                alarm[0] = 10
            ghost_cd = 4
        }
        xface = image_xscale
        hsp = (image_xscale * 9)
        image_speed = 1.25
        if grounded
        {
            wallrun_spd = 0
            if (tack2 == 1)
            {
                if audio_is_playing(tackle1_sfx)
                    audio_stop_sound(tackle1_sfx)
                tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
                with (tackle_particle)
                {
                    image_xscale = other.image_xscale
                    targ = other.id
                    sprite_index = spr_effect3
                }
                state = "tackle2"
            }
            else
            {
                if audio_is_playing(tackle1_sfx)
                    audio_stop_sound(tackle1_sfx)
                state = "tackle1"
            }
        }
        if key_down
        {
            scr_1sound(sfx_dive)
            if (vsp < 0)
                vsp = 0
            state = "tackle1"
            crouch = 1
        }
        if key_taunt
        {
            sfxtaunt = audio_play_sound(sfx_taunt, 1, false)
            audio_sound_pitch(sfxtaunt, random_range(0.95, 1.05))
            instance_create_depth(x, (y + 16), 10, obj_effecttemporary)
            tauntduration = 18
            if (global.stylin_score >= 10 && key_up)
            {
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
                image_index = irandom_range(1, 8)
        }
        scr_player_action_suplex()
        if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + image_xscale), y, obj_slope))))
        {
            instance_destroy(tackle_particle)
            if audio_is_playing(tackle2_sfx)
                audio_stop_sound(tackle2_sfx)
            state = "wallrun"
        }
        switch jumpspr
        {
            case spr_intern_jump_grab:
                sprite_index = spr_player_walljump
                break
            case spr_sauce:
                sprite_index = spr_player_walljump_loop
                break
        }

    }
}

