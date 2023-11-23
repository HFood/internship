function scr_player_superjump_spin() //gml_Script_scr_player_superjump_spin
{
    scr_player_collision(0, 0)
    xface = image_xscale
    grabbing = 0
    spinning = 0
    tauntduration = 0
    stomp = 0
    crouch = 0
    hsp = 0
    vsp = 0
    image_speed = 2.5
    sprite_index = spr_player_superjump_cancel
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
            alarm[0] = 10
        ghost_cd = 4
    }
}

