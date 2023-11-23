function scr_player_outterportal() //gml_Script_scr_player_outterportal
{
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
            alarm[0] = 10
        ghost_cd = 4
    }
    xface = 1
    hsp = 0
    vsp = 0
    image_speed = 1
    sprite_index = spr_player_tumblefall
    if (portal_scale < 1)
        portal_scale += 0.04
    else
    {
        jumpspr = spr_sauce
        state = "normal"
    }
}

