function scr_player_cheesed() //gml_Script_scr_player_cheesed
{
    scr_player_collision(0, 0)
    if (cheesed_state != "start" && cheesed_state != "wallclimb")
    {
        xface = image_xscale
        if (key_jump_release && vsp < 0)
            vsp /= 3
        if grounded
        {
            if (landsfx == 1)
            {
                var chs_debris = irandom_range(3, 5)
                repeat chs_debris
                {
                    with (instance_create_depth(x, bbox_bottom, -1000, obj_debris))
                    {
                        sprite_index = spr_cheese_debris
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
        crouch = 0
        if (cheesed_state != "roll")
        {
            image_speed = 1
            if grounded
            {
                if (move != 0)
                    sprite_index = spr_player_cheesed_walk
                else
                    sprite_index = spr_player_cheesed_idle
            }
            else
            {
                switch jumpspr
                {
                    case spr_intern_jump_grab:
                        sprite_index = spr_player_cheesed_jump
                        break
                    case spr_sauce:
                        sprite_index = spr_player_cheesed_jump_air
                        break
                }

            }
        }
        else
        {
            if grounded
            {
                if (cheesed_landed == 0 && (!(place_meeting(x, (y + 1), obj_slope))))
                {
                    vsp = -4
                    cheesed_landed = 1
                }
                cheesed_jumped = 0
            }
            image_speed = (abs(hsp) / 6)
        }
        if (key_jump && (grounded || cheesed_jumped == 0) && (!(place_meeting(x, (y - 1), obj_solid))))
        {
            image_index = 0
            scr_sound(sfx_jump)
            cheesed_jumped = 1
            if (cheesed_state == "roll")
            {
                cheesed_landed = 0
                vsp = -10
            }
            else
                vsp = -12
            jumpspr = spr_intern_jump_grab
        }
        if (grounded && cheesed_state != "roll")
        {
            if instance_place(x, (y + 1), obj_slope)
            {
                var slp = instance_place(x, (y + 1), obj_slope)
                image_xscale = (-sign(slp.image_xscale))
                cheesed_state = "roll"
            }
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
    }
    else if (cheesed_state == "start")
    {
        xface = 1
        sprite_index = spr_player_cheesed_start
        mask_index = spr_intern_hitbox
    }
    if (cheesed_state == "roll")
    {
        sprite_index = spr_player_cheesed_roll
        if (!audio_is_playing(roll_sfx))
            roll_sfx = audio_play_sound(sfx_roll, 1, true)
        if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + image_xscale), y, obj_cheeseblock))))
        {
            scr_sound(sfx_roll_end)
            chs_debris = irandom_range(4, 7)
            repeat chs_debris
            {
                with (instance_create_depth(x, y, -1000, obj_debris))
                {
                    sprite_index = spr_cheese_debris
                    image_index = irandom_range(0, 3)
                    hsp = irandom_range(-6, 6)
                    vsp = irandom_range(-4, 1)
                }
            }
            cheesed_state = "start"
            image_index = 0
            state = "wallstun"
        }
        if (ghost_cd > 0)
            ghost_cd--
        else
        {
            with (instance_create_depth(x, y, 30, obj_ghostmove))
            {
                plain = 1
                image_blend = 0x74E5F7
                sprite_index = other.sprite_index
                image_index = other.image_index
                image_xscale = other.image_xscale
                image_yscale = other.image_yscale
            }
            ghost_cd = 4
        }
    }
    else if audio_is_playing(roll_sfx)
        audio_stop_sound(roll_sfx)
    if (cheesed_state == "wallclimb")
    {
        if (key_jump && (!(place_meeting(x, (y - 1), obj_solid))) && (!(place_meeting((x + image_xscale), y, obj_solid))))
        {
            x += image_xscale
            cheesed_state = "normal"
            scr_sound(sfx_jump)
            vsp = -8
            jumpspr = spr_intern_jump_grab
        }
        if ((!(place_meeting((x + image_xscale), y, obj_solid))) || grounded)
        {
            vsp = 0
            x += image_xscale
            cheesed_state = "normal"
        }
        if key_up
        {
            sprite_index = spr_player_cheesed_wallclimb
            vsp = -4
        }
        else if key_down
        {
            sprite_index = spr_player_cheesed_wallclimb
            vsp = 4
        }
        else
        {
            sprite_index = spr_player_cheesed_wallclimb_idle
            vsp = 0
        }
    }
    else
        scr_gravity()
    switch cheesed_state
    {
        case "start":
            hsp = 0
            break
        case "normal":
            if grounded
                hsp = (move * 4)
            else
                hsp = (image_xscale * 5)
            break
        case "wallclimb":
            hsp = 0
            break
        case "roll":
            hsp = (image_xscale * 10)
            break
    }

}

