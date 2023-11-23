function scr_basheffect_offset(argument0, argument1) //gml_Script_scr_basheffect_offset
{
    with (instance_create_depth((x + (argument0 * image_xscale)), (y + (argument1 * image_yscale)), -1001, obj_effecttemporary))
        sprite_index = spr_effect15
}

