function scr_water_drops() //gml_Script_scr_water_drops
{
    var drops = irandom_range(4, 7)
    repeat drops
    {
        with (instance_create_depth(obj_player.x, (obj_player.bbox_bottom - 16), -1004, obj_debris))
        {
            sprite_index = spr_water_drop
            hsp = irandom_range(-8, 8)
            vsp = irandom_range(-2, 1)
        }
    }
}

