function scr_player_grab() //gml_Script_scr_player_grab
{
    scr_player_collision(0, 0)
    xface = image_xscale
    if (key_jump_release && vsp < 0)
        vsp /= 2
    if (key_down && grounded)
    {
        with (grabling)
        {
            hsp = 0
            fly_spd = 0
            slide_spd = 0
            grabber_id = -4
        }
        state = "normal"
    }
    if (!instance_exists(grabling))
        state = "normal"
    if grounded
    {
        if (landsfx == 1)
        {
            image_index = 0
            walk_acc = 0.5
            landspr = spr_intern_jump_grab
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
    image_speed = 1
    if grounded
    {
        if (move != 0)
        {
            if (landspr == spr_intern_jump_grab)
                sprite_index = spr_player_jump_land_grab
            else
                sprite_index = spr_player_walk_grab
        }
        else if (landspr == spr_intern_jump_grab)
            sprite_index = spr_player_jump_land_grab
        else
            sprite_index = spr_player_idle_grab
    }
    else
    {
        switch jumpspr
        {
            case spr_intern_jump_grab:
                sprite_index = spr_player_jump_grab
                break
            case spr_sauce:
                sprite_index = spr_player_jump_air_grab
                break
        }

    }
    if (key_jump && grounded && (!(place_meeting(x, (y - 1), obj_solid))))
    {
        scr_sound(sfx_jump)
        vsp = -10
        jumpspr = spr_intern_jump_grab
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
    scr_gravity()
    if (key_grab && grabling.object_index == obj_dynamite)
    {
        if (key_up && global.character == "intern")
        {
            image_index = 0
            jumpspr = spr_intern_jump_grab
            if grounded
                sprite_index = spr_player_uppunch
            else
                sprite_index = spr_player_uppunch_midair
            suplexsfx = audio_play_sound(sfx_suplex, 1, false)
            vsp = -14
            state = "uppunch"
            with (grabling)
            {
                vsp = -15
                hsp = (other.image_xscale * 5)
                grabber_id = -4
            }
        }
        else
        {
            state = "bombthrow"
            with (grabling)
            {
                vsp = -5
                if (object_index == obj_dynamite)
                {
                    image_xscale = other.image_xscale
                    fly_spd = 9
                }
                else
                    hsp = (other.image_xscale * 9)
                grabber_id = -4
            }
        }
    }
    hsp = (move * (6 - ((inwater * 1) * walk_acc)))
}

