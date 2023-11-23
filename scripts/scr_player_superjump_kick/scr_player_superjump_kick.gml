function scr_player_superjump_kick() //gml_Script_scr_player_superjump_kick
{
    scr_player_collision(0, 0)
    scr_gravity()
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
            alarm[0] = 10
        ghost_cd = 4
    }
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
    if audio_is_playing(tackle2_sfx)
        audio_stop_sound(tackle2_sfx)
    if audio_is_playing(tackle1_sfx)
        audio_stop_sound(tackle1_sfx)
    xface = image_xscale
    hsp = (image_xscale * 14)
    if grounded
    {
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
        rolltotackle = -1
        state = "tackle2"
    }
    if key_down
    {
        scr_1sound(sfx_dive)
        if (vsp < 0)
            vsp = 0
        machspd = 0
        machtime = 35
        state = "tackle1"
        crouch = 1
    }
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_destroyable))) && (!(place_meeting((x + image_xscale), y, obj_slope))))
    {
        wrun_tackle = 2
        instance_destroy(tackle_particle)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        spinning = 0
        state = "wallrun"
    }
    sprite_index = spr_player_superjump_cancel_claw
}

