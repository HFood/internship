function scr_player_uppunch() //gml_Script_scr_player_uppunch
{
    if (vsp < 0)
    {
        if (ghost_cd > 0)
            ghost_cd--
        else
        {
            with (instance_create_depth(x, y, 30, obj_machafterimage))
                alarm[0] = 10
            ghost_cd = 4
        }
    }
    scr_player_collision(0, 0)
    scr_gravity()
    xface = uppercut_xsc
    if grounded
    {
        tack0 = 0
        tack1 = 0
        tack2 = 0
        rolltotackle = 1
        tacklehit = 1
        machtime = 0
        machspd = 0
        state = "normal"
    }
    if ((!grounded) && key_down_once)
    {
        bodyslam_ystart = y
        jumpspr = spr_intern_jump_grab
        image_index = 0
        state = "bodyslam_spin"
    }
    sprite_index = spr_player_uppercut
    hsp = uppercut_spd
    if (move != 0)
    {
        if (move == 1 && uppercut_spd < 5)
            uppercut_spd += 0.4
        else if (move == -1 && uppercut_spd > -5)
            uppercut_spd -= 0.4
    }
    else if (uppercut_spd < -0.5)
        uppercut_spd += 0.4
    else if (uppercut_spd > 0.5)
        uppercut_spd -= 0.4
    else
        uppercut_spd = 0
    if (uppercut_spd > 5)
        uppercut_spd -= 0.6
    else if (uppercut_spd < -5)
        uppercut_spd += 0.6
    image_speed = 1
}

