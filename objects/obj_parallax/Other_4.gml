if (global.escape == 1 && global.insecret == 0)
{
    switch room
    {
        case rm_resort4:
            var lay_id = layer_get_id("Background")
            var bg_id = layer_background_get_id(lay_id)
            layer_background_sprite(bg_id, spr_bg_resort1_panic)
            lay_id = layer_get_id("Backgrounds_1")
            bg_id = layer_background_get_id(lay_id)
            layer_background_sprite(bg_id, spr_bg_resort2_panic)
            lay_id = layer_get_id("Backgrounds_2")
            bg_id = layer_background_get_id(lay_id)
            layer_background_sprite(bg_id, spr_bg_resort3_panic)
            break
        case rm_resort5:
            lay_id = layer_get_id("Background")
            bg_id = layer_background_get_id(lay_id)
            layer_background_sprite(bg_id, spr_bg_resort1_panic)
            lay_id = layer_get_id("Backgrounds_1")
            bg_id = layer_background_get_id(lay_id)
            layer_background_sprite(bg_id, spr_bg_resort2_panic)
            lay_id = layer_get_id("Backgrounds_2")
            bg_id = layer_background_get_id(lay_id)
            layer_background_sprite(bg_id, spr_bg_resort3_panic)
            break
        case rm_resort8:
            lay_id = layer_get_id("Background")
            bg_id = layer_background_get_id(lay_id)
            layer_background_sprite(bg_id, spr_bg_resort1_panic)
            lay_id = layer_get_id("Backgrounds_1")
            bg_id = layer_background_get_id(lay_id)
            layer_background_sprite(bg_id, spr_bg_resort2_panic)
            lay_id = layer_get_id("Backgrounds_2")
            bg_id = layer_background_get_id(lay_id)
            layer_background_sprite(bg_id, spr_bg_resort3_panic)
            break
    }

    if (global.level == "circus" && room != rm_circus1 && room != rm_circus2 && room != rm_circus11)
    {
        lay_id = layer_get_id("Background")
        bg_id = layer_background_get_id(lay_id)
        layer_background_sprite(bg_id, spr_bg_circus2b)
    }
}
