function scr_enemy_rabbit_heat() //gml_Script_scr_enemy_rabbit_heat
{
    sprite_index = heat_jumpspr
    hsp = (image_xscale * 6)
    if grounded
    {
        heat_delay = 80
        angspr = spr_rabbit_run
        state = "run"
    }
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

