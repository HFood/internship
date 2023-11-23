function scr_player_wallrun() //gml_Script_scr_player_wallrun
{
    scr_player_collision(0, 0)
    xface = image_xscale
    vsp = (-((11 + wallrun_spd)))
    if (vsp > 0)
        wallrun_spd += 0.75
    else
        wallrun_spd += 0.04
    if (wallrun_spd > 1)
        wrun_tackle = 2
    wallrun_spd = min(wallrun_spd, 26)
    vsp = max(vsp, -21)
    if (!audio_is_playing(tackle1_sfx))
    {
        tack1 = 1
        tackle1_sfx = audio_play_sound(sfx_mach2, 1, false)
    }
    if (!(place_meeting((x + image_xscale), y, obj_solid)))
    {
        vsp = 0
        instance_destroy(tackle_particle)
        x += image_xscale
        if (wrun_tackle == 2)
        {
            tack2 = 1
            tack1 = 1
            tack0 = 1
            machspd = (wallrun_spd / 2)
            tackle_particle = instance_create_depth(x, y, -1, obj_effecttarget)
            with (tackle_particle)
            {
                persistent = 1
                image_xscale = other.image_xscale
                targ = other.id
                sprite_index = spr_effect3
            }
            if audio_is_playing(tackle1_sfx)
                audio_stop_sound(tackle1_sfx)
            wallrun_spd = 0
            state = "tackle2"
        }
        else
            state = "tackle1"
    }
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
        image_speed = 1
        if (ghost_cd > 0)
            ghost_cd--
        else
        {
            with (instance_create_depth(x, y, 30, obj_machafterimage))
                alarm[0] = 10
            ghost_cd = 8
        }
        sprite_index = spr_player_wallrun
        if (place_meeting(x, (y - 1), obj_solid) && (!(place_meeting(x, (y - 1), obj_destroyable))) && place_meeting((x + image_xscale), y, obj_solid))
        {
            rolltotackle = 1
            grabonground = 0
            machspd = 0
            machtime = 0
            wallrun_spd = 0
            with (obj_camera)
                shk_strength += 4
            if audio_is_playing(tackle1_sfx)
                audio_stop_sound(tackle1_sfx)
            instance_destroy(tackle_particle)
            scr_sound(sfx_groundpound)
            tack0 = 0
            tack1 = 0
            tack2 = 0
            state = "ceilinghit"
            image_index = 0
        }
    }
    if key_jump
    {
        wallrun_spd /= 4
        machspd = 0
        vsp = -9
        image_xscale = (-image_xscale)
        jumpspr = spr_intern_jump_grab
        image_index = 0
        state = "walljump"
    }
    if (!key_dash)
    {
        grabonground = 0
        tack0 = 0
        tack1 = 0
        tack2 = 0
        instance_destroy(tackle_particle)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        wallrun_spd = 0
        vsp = (-((4 + (wallrun_spd * 3))))
        machtime = 0
        machspd = 0
        jumpspr = spr_intern_jump_grab
        rolltotackle = 1
        image_index = 0
        state = "normal"
    }
}

