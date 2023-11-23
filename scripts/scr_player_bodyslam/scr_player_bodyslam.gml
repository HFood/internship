function scr_player_bodyslam() //gml_Script_scr_player_bodyslam
{
    scr_player_collision(0, 0)
    if (sprite_index == spr_player_mayogun_bodyslam || sprite_index == spr_player_mayogun_bodyslam_start || sprite_index == spr_player_longfall)
        xface = 1
    else
        xface = image_xscale
    if (particle_delay > 0)
        particle_delay--
    else
    {
        instance_destroy(windeffect)
        with (instance_create_depth(x, y, -1, obj_effecttemporary))
        {
            other.windeffect = id
            targ = other.id
            sprite_index = spr_effect24
        }
        particle_delay = 20
    }
    if place_meeting(x, (y + 1), obj_destroyable)
    {
        var destr = instance_place(x, (y + 1), obj_destroyable)
        destr.hp--
    }
    if place_meeting(x, (y + 1), obj_breadbox_big_up)
    {
        destr = instance_place(x, (y + 1), obj_breadbox_big_up)
        destr.hp--
    }
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
    if (!audio_is_playing(bodyslamsfx))
    {
        if (bodyslam_serious == 1)
            bodyslamsfx = audio_play_sound(sfx_bodyslamloop, 1, true)
        else
            audio_stop_sound(bodyslamsfx)
    }
    if (chargeslam_spd > 0.3)
        chargeslam_spd -= 1.8
    else if (chargeslam_spd < -0.3)
        chargeslam_spd += 1.8
    else
        chargeslam_spd = 0
    grabbing = 0
    spinning = 0
    crouch = 0
    stomp = 0
    mask_index = spr_intern_hitbox
    if (bodyslam_type == 1)
    {
        switch jumpspr
        {
            case spr_intern_jump_grab:
                if (global.mayogun == 1)
                    sprite_index = spr_player_mayogun_bodyslam_start
                else
                    sprite_index = spr_player_bodyslam
                break
            case spr_sauce:
                if (global.mayogun == 1)
                    sprite_index = spr_player_mayogun_bodyslam
                else
                    sprite_index = spr_player_bodyslam_air
                break
            case spr_ghostic_jump:
                sprite_index = spr_player_longfall
                break
        }

    }
    else
        sprite_index = spr_player_tumble
    scr_gravity()
    vsp += 1
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
    if (grounded && (!(place_meeting(x, (y + 1), obj_breadbox))) && (!(place_meeting(x, (y + 1), obj_sandwichbox))))
    {
        if instance_place(x, (y + 1), obj_slope)
        {
            var slp = instance_place(x, (y + 1), obj_slope)
            image_xscale = (-sign(slp.image_xscale))
            crouchslide_dur = (0.6 * prevvsp)
            crouchslide_beforend = (crouchslide_dur * 4)
            crouchslide_machable = round((60 - (prevvsp * 1.8)))
            crouchslide_machable = max(crouchslide_machable, 5)
            state = "crouchslide"
        }
        else
        {
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
            if (bodyslam_serious == 1)
            {
                var bodyslam_metalblock = instance_place(x, (y + 1), obj_metalbox)
                if bodyslam_metalblock
                    bodyslam_metalblock.hp--
            }
            bodyslam_serious = 0
            instance_destroy(bodyslam_particle)
            image_index = 0
            state = "longfall_hit"
        }
        if (jumpspr == spr_ghostic_jump)
            jumpspr = spr_sauce
    }
    else if (bodyslam_type == 1)
    {
        if (jumpspr == spr_ghostic_jump)
            hsp = ((move * 2) + chargeslam_spd)
        else
            hsp = (move * 4)
    }
    else
        hsp = 0
    if (prevvsp != vsp)
        prevvsp = vsp
}

