function scr_enemy_olivebreak() //gml_Script_scr_enemy_olivebreak
{
    hsp = (image_xscale * breakspd)
    sprite_index = spr_olive_heat
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
        {
            image_index = other.image_index
            image_xscale = other.image_xscale
            sprite_index = other.sprite_index
            alarm[0] = 10
        }
        ghost_cd = 4
    }
    if (place_meeting((x + image_xscale), y, obj_solid) && grounded)
        image_xscale = (-image_xscale)
    if (breakspd > 0)
        breakspd -= 0.006
    breakspd = max(0, breakspd)
}

