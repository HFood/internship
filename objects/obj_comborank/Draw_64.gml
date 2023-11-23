draw_set_font(global.itfont_numbersmall)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (((obj_scorekeeper.tvy + 260) + obj_scorekeeper.combometer_y) > (obj_scorekeeper.tvy + 260))
{
    if (passby == 0)
    {
        draw_sprite_ext(sprite_index, image_index, obj_scorekeeper.tvx, ((obj_scorekeeper.tvy + 260) + obj_scorekeeper.combometer_y), 2.4, 2.4, 0, c_white, 1)
        draw_text_transformed(obj_scorekeeper.tvx, ((obj_scorekeeper.tvy + 380) + obj_scorekeeper.combometer_y), _score, 2, 2, 0)
    }
    else
    {
        draw_sprite_ext(sprite_index, image_index, obj_scorekeeper.tvx, (((obj_scorekeeper.tvy + 260) + obj_scorekeeper.combometer_y) + drawy), 2.4, 2.4, 0, c_white, drawalpha)
        draw_text(obj_scorekeeper.tvx, ((((obj_scorekeeper.tvy + 280) + obj_scorekeeper.combometer_y) + drawy) + 30), (string(hotx) + "X"))
    }
}
else if (passby == 0)
{
    draw_sprite_ext(sprite_index, image_index, obj_scorekeeper.tvx, (obj_scorekeeper.tvy + 260), 2.4, 2.4, 0, c_white, 1)
    draw_text_transformed(obj_scorekeeper.tvx, (obj_scorekeeper.tvy + 380), _score, 2, 2, 0)
}
else
    draw_sprite_ext(sprite_index, image_index, obj_scorekeeper.tvx, ((obj_scorekeeper.tvy + 320) + drawy), 2.4, 2.4, 0, c_white, drawalpha)
