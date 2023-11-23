function scr_player_action_suplex() //gml_Script_scr_player_action_suplex
{
    switch suplexmove
    {
        case "grab":
            if (grabcooldown > 0 && grabbing == 0)
                grabcooldown--
            else if (key_grab && grabbing == 0 && crouch == 0)
            {
                if key_up
                {
                    tack0 = 0
                    tack1 = 0
                    tack2 = 0
                    instance_destroy(tackle_particle)
                    if audio_is_playing(tackle2_sfx)
                        audio_stop_sound(tackle2_sfx)
                    image_index = 0
                    jumpspr = spr_intern_jump_grab
                    if grounded
                        sprite_index = spr_player_uppunch
                    else
                        sprite_index = spr_player_uppunch_midair
                    suplexsfx = audio_play_sound(sfx_suplex, 1, false)
                    vsp = -14
                    state = "uppunch"
                }
                else
                {
                    tack0 = 0
                    tack1 = 0
                    tack2 = 0
                    instance_destroy(tackle_particle)
                    if audio_is_playing(tackle2_sfx)
                        audio_stop_sound(tackle2_sfx)
                    state = "normal"
                    suplexsfx = audio_play_sound(sfx_suplex, 1, false)
                    if (!grounded)
                    {
                        grabonground = -1
                        vsp = -8
                    }
                    grabcooldown = 20
                    grabbing = 1
                }
            }
            break
        case "spin":
            if (grabcooldown > 0 && spinning == 0)
                grabcooldown--
            else if (key_grab && spinning == 0 && crouch == 0)
            {
                if (key_up && character == "intern" && state != "snowball")
                {
                    uppercut_xsc = image_xscale
                    grabonground = 0
                    spinning = 0
                    tack0 = 0
                    tack1 = 0
                    tack2 = 0
                    machspd = 0
                    machtime = 0
                    tacklehit = 1
                    rolltotackle = 1
                    instance_destroy(tackle_particle)
                    if audio_is_playing(tackle2_sfx)
                        audio_stop_sound(tackle2_sfx)
                    image_index = 0
                    jumpspr = spr_intern_jump_grab
                    if grounded
                        sprite_index = spr_player_uppunch
                    else
                        sprite_index = spr_player_uppunch_midair
                    suplexsfx = audio_play_sound(sfx_uppercut2, 1, false)
                    scr_sound(sfx_uppercut)
                    if grounded
                        vsp = -14
                    else if (vsp > 0)
                    {
                        vsp = (-12 + (vsp / 3))
                        vsp = min(vsp, 0)
                    }
                    else
                        vsp = -12
                    audio_sound_pitch(sfx_uppercut, min((1 + (-12 - (vsp * 0.25))), 1.35))
                    uppercut_spd = hsp
                    state = "uppunch"
                }
                else
                {
                    tack0 = 0
                    tack1 = 0
                    tack2 = 0
                    machspd = 0
                    machtime = 0
                    tacklehit = 1
                    rolltotackle = 1
                    jumpspr = spr_sauce
                    instance_destroy(tackle_particle)
                    if audio_is_playing(tackle2_sfx)
                        audio_stop_sound(tackle2_sfx)
                    if (state == "fishride")
                    {
                        suplexsfx = audio_play_sound(sfx_suplex, 1, false)
                        image_index = 0
                        instance_destroy(windeffect)
                        with (instance_create_depth(x, y, -1, obj_effecttemporary))
                        {
                            other.windeffect = id
                            targ = other.id
                            sprite_index = spr_effect12
                            image_xscale = other.image_xscale
                        }
                        if (!grounded)
                            grabonground = -1
                        if (vsp < 0)
                            vsp /= 1.2
                        grabcooldown = 0
                        spinning = 1
                    }
                    else if (global.mayogun == 1)
                    {
                        grabonground = 0
                        image_index = 0
                        scr_mayogun_bulletcreate()
                        scr_1sound(sfx_killingblow)
                        uppercut_xsc = image_xscale
                        state = "mayogun_shoot"
                    }
                    else
                    {
                        blink = 5
                        if (character == "intern")
                        {
                            suplexsfx = audio_play_sound(sfx_suplex, 1, false)
                            if (state == "snowball")
                            {
                                var chs_debris = irandom_range(3, 5)
                                repeat chs_debris
                                {
                                    with (instance_create_depth(x, y, -1000, obj_debris))
                                    {
                                        sprite_index = spr_snowball_debris_big
                                        image_index = irandom_range(0, 3)
                                        hsp = irandom_range(-6, 6)
                                        vsp = irandom_range(-4, 1)
                                    }
                                }
                                chs_debris = irandom_range(4, 7)
                                repeat chs_debris
                                {
                                    with (instance_create_depth(x, y, -1000, obj_debris))
                                    {
                                        sprite_index = spr_snowball_debris
                                        image_index = irandom_range(0, 3)
                                        hsp = irandom_range(-6, 6)
                                        vsp = irandom_range(-4, 1)
                                    }
                                }
                                machgrab_spd = (snowball_spd + 8)
                                if grounded
                                {
                                    spinspr = spr_player_machgrab
                                    spindur = 40
                                }
                                else
                                {
                                    image_index = 0
                                    jumpspr = spr_intern_jump_grab
                                    spinspr = choose(spr_player_airhit1, spr_player_airhit2)
                                    spindur = 120
                                }
                            }
                            else if (state == "tackle2")
                            {
                                machgrab_spd = (machspd + 12)
                                if grounded
                                {
                                    spinspr = spr_player_machgrab
                                    spindur = 40
                                }
                                else
                                {
                                    image_index = 0
                                    jumpspr = spr_intern_jump_grab
                                    spinspr = choose(spr_player_airhit1, spr_player_airhit2)
                                    spindur = 120
                                }
                            }
                            else if (state == "tackle1")
                            {
                                machgrab_spd = 10
                                if grounded
                                {
                                    spinspr = spr_player_machgrab
                                    spindur = 40
                                }
                                else
                                {
                                    image_index = 0
                                    jumpspr = spr_intern_jump_grab
                                    spinspr = choose(spr_player_airhit1, spr_player_airhit2)
                                    spindur = 120
                                }
                            }
                            else
                            {
                                if grounded
                                    spinspr = spr_player_bashmove1
                                else
                                    spinspr = spr_player_bashmove_air_start
                                spindur = 40
                            }
                        }
                        else
                        {
                            suplexsfx = audio_play_sound(sfx_Nspin, 1, false)
                            spinspr = spr_player_spin
                            spindur = 25
                        }
                        state = "normal"
                        image_index = 0
                        instance_destroy(windeffect)
                        with (instance_create_depth(x, y, -1, obj_effecttemporary))
                        {
                            other.windeffect = id
                            targ = other.id
                            sprite_index = spr_effect12
                            image_xscale = other.image_xscale
                        }
                        if (!grounded)
                            grabonground = -1
                        if (vsp < 0)
                            vsp /= 1.2
                        grabcooldown = 0
                        spinning = 1
                    }
                }
            }
            break
    }

}

