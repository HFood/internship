function scr_enemy_cocobomb_idle() //gml_Script_scr_enemy_cocobomb_idle
{
    hsp = 0
    if (collision_rectangle((x - 160), (y + 32), (x + 160), (y - 32), obj_player, 0, 1) && (!(collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true))))
    {
        image_index = 0
        state = "cocobomb_start"
    }
    sprite_index = asset_get_index((("spr_" + enem_type) + "_idle"))
}

