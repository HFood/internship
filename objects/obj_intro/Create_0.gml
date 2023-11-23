var myhour = date_get_hour(date_current_datetime())
switch room
{
    case rm_intro:
        if (myhour > 18)
        {
            var bg = layer_get_id("Background")
            var bg1 = layer_get_id("Backgrounds_1")
            var bg2 = layer_get_id("Backgrounds_2")
            var lay = layer_background_get_id(bg)
            var lay1 = layer_background_get_id(bg1)
            var lay2 = layer_background_get_id(bg2)
            layer_background_sprite(lay, spr_bg_intro_0b)
            layer_background_sprite(lay1, spr_bg_intro_1b)
            layer_background_sprite(lay2, spr_bg_intro_2b)
        }
        else if (myhour > 12)
        {
            bg = layer_get_id("Background")
            bg1 = layer_get_id("Backgrounds_1")
            bg2 = layer_get_id("Backgrounds_2")
            lay = layer_background_get_id(bg)
            lay1 = layer_background_get_id(bg1)
            lay2 = layer_background_get_id(bg2)
            layer_background_sprite(lay, spr_bg_intro_0)
            layer_background_sprite(lay1, spr_bg_intro_1)
            layer_background_sprite(lay2, spr_bg_intro_2)
        }
        else if (myhour > 6)
        {
            bg = layer_get_id("Background")
            bg1 = layer_get_id("Backgrounds_1")
            bg2 = layer_get_id("Backgrounds_2")
            lay = layer_background_get_id(bg)
            lay1 = layer_background_get_id(bg1)
            lay2 = layer_background_get_id(bg2)
            layer_background_sprite(lay, spr_bg_intro_0a)
            layer_background_sprite(lay1, spr_bg_intro_1a)
            layer_background_sprite(lay2, spr_bg_intro_2a)
        }
        else
        {
            bg = layer_get_id("Background")
            bg1 = layer_get_id("Backgrounds_1")
            bg2 = layer_get_id("Backgrounds_2")
            var bg3 = layer_get_id("Backgrounds_3")
            var bg4 = layer_get_id("Backgrounds_4")
            lay = layer_background_get_id(bg)
            lay1 = layer_background_get_id(bg1)
            lay2 = layer_background_get_id(bg2)
            var lay3 = layer_background_get_id(bg3)
            var lay4 = layer_background_get_id(bg4)
            layer_background_sprite(lay, spr_bg_intro_0c)
            layer_background_sprite(lay1, spr_bg_intro_1c)
            layer_background_sprite(lay2, spr_bg_intro_2c)
            layer_background_sprite(lay3, spr_bg_intro_3c)
            layer_background_sprite(lay4, spr_bg_intro_4c)
        }
        break
    case rm_intro_hfood:
        if (myhour > 18)
        {
            bg = layer_get_id("Background")
            bg1 = layer_get_id("Backgrounds_1")
            lay = layer_background_get_id(bg)
            lay1 = layer_background_get_id(bg1)
            layer_background_sprite(lay, spr_bg_intro_0b)
            layer_background_sprite(lay1, spr_bg_intro_hfood_b)
        }
        else if (myhour > 12)
        {
            bg = layer_get_id("Background")
            bg1 = layer_get_id("Backgrounds_1")
            lay = layer_background_get_id(bg)
            lay1 = layer_background_get_id(bg1)
            layer_background_sprite(lay, spr_bg_intro_0)
            layer_background_sprite(lay1, spr_bg_intro_hfood)
        }
        else if (myhour > 6)
        {
            bg = layer_get_id("Background")
            bg1 = layer_get_id("Backgrounds_1")
            lay = layer_background_get_id(bg)
            lay1 = layer_background_get_id(bg1)
            layer_background_sprite(lay, spr_bg_intro_0a)
            layer_background_sprite(lay1, spr_bg_intro_hfood_a)
        }
        else
        {
            bg = layer_get_id("Background")
            bg1 = layer_get_id("Backgrounds_1")
            lay = layer_background_get_id(bg)
            lay1 = layer_background_get_id(bg1)
            layer_background_sprite(lay, spr_bg_intro_0c)
            layer_background_sprite(lay1, spr_bg_intro_hfood_c)
        }
        break
}

