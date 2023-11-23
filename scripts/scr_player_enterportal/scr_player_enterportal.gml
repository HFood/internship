function scr_player_enterportal() //gml_Script_scr_player_enterportal
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
    if instance_exists(portal_id)
    {
        x += ((portal_id.x - x) * 0.1)
        y += ((portal_id.y - y) * 0.1)
    }
    if (portal_scale > 0.1)
        portal_scale -= 0.025
    else
    {
        with (portal_id)
            doit = 1
    }
}

