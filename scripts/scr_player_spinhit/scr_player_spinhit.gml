function scr_player_spinhit() //gml_Script_scr_player_spinhit
{
    scr_player_collision(0, 0)
    xface = image_xscale
    mask_index = spr_intern_hitbox
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_ghostmove))
        {
            plain = 1
            image_blend = 0xFF8030
            sprite_index = other.sprite_index
            image_index = other.image_index
            image_xscale = other.image_xscale
            image_yscale = other.image_yscale
        }
        ghost_cd = 4
    }
    if grounded
    {
        if (spinhit_moving == 1)
        {
            image_xscale = spinhit_dir
            spinhit_moving = 0
        }
        state = "normal"
    }
    if (spinhit_moving == 1)
    {
        hsp = uppercut_spd
        if (move != 0)
        {
            if (move == 1 && uppercut_spd < 5)
                uppercut_spd += 0.5
            else if (move == -1 && uppercut_spd > -5)
                uppercut_spd -= 0.5
        }
        else if (uppercut_spd < -0.5)
            uppercut_spd += 0.4
        else if (uppercut_spd > 0.5)
            uppercut_spd -= 0.4
        else
            uppercut_spd = 0
        scr_gravity()
        image_xscale = spinhit_dir
    }
    else
    {
        hsp = 0
        vsp = 0
    }
    grabbing = 0
    spinning = 0
    sprite_index = spinhit_spr
    if (spinhit_spr != spr_player_suplexpunch_air)
        image_speed = 0.75
    else
        image_speed = 1.2
}

