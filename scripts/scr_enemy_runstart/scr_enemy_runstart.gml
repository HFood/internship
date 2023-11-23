function scr_enemy_runstart() //gml_Script_scr_enemy_runstart
{
    hsp = 0
    sprite_index = angspr
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
    if grounded
        state = "run"
    if (place_meeting((x + image_xscale), y, obj_solid) && grounded)
        image_xscale = (-image_xscale)
}

