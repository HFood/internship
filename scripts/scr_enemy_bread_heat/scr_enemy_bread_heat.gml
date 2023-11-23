function scr_enemy_bread_heat() //gml_Script_scr_enemy_bread_heat
{
    switch heat_state
    {
        case 1:
            hsp = 0
            sprite_index = spr_bread_heat_start
            break
        case 2:
            hsp = (heat_spd * image_xscale)
            sprite_index = spr_bread_heat_end
            if (heat_spd > 0)
                heat_spd -= 0.2
            else
                heat_spd = 0
            break
    }

    image_speed = 1.25
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

