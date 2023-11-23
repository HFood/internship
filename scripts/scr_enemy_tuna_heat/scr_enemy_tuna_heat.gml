function scr_enemy_tuna_heat() //gml_Script_scr_enemy_tuna_heat
{
    sprite_index = tuna_heatspr
    hsp = 0
    if grounded
    {
        heat_delay = 80
        state = "normal"
    }
    if (vsp >= 0)
        tuna_heatspr = spr_tuna_heat_end
    else
        tuna_heatspr = spr_tuna_heat_start
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
}

