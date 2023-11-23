function scr_effectpoof() //gml_Script_scr_effectpoof
{
    with (instance_create_depth(x, y, -1005, obj_effecttemporary))
    {
        depth = -1005
        image_xscale = 1
        image_yscale = 1
        sprite_index = spr_effect32
    }
}

