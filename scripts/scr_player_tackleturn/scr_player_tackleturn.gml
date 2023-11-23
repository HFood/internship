function scr_player_tackleturn() //gml_Script_scr_player_tackleturn
{
    scr_player_collision(0, 0)
    scr_gravity()
    xface = image_xscale
    machtime = 0
    tauntduration = 0
    image_speed = 1
    if (tack2 == 1)
    {
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
    }
    else if (tack1 == 1)
    {
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
    }
    else if audio_is_playing(tackle0_sfx)
        audio_stop_sound(tackle0_sfx)
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
    if (place_meeting((x + image_xscale), y, obj_solid) && (!(place_meeting((x + image_xscale), y, obj_slope))) && tackleturnspd < 8)
        tackleturnspd = 0
    if (tackleturnspd > 2)
        tackleturnspd -= 0.4
    else if (image_index == (image_number - 1) && grounded)
    {
        tackleturnspd = 0
        image_xscale = (-image_xscale)
        facing = (-facing)
        if (tack2 == 1)
        {
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
            state = "tackle1"
    }
    else
        tackleturnspd = 0
    hsp = (tackleturnspd * image_xscale)
    if (turnspr == spr_sauce)
        sprite_index = spr_player_tackle2_turn_loop
}

