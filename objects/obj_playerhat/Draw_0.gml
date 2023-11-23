if (hat == -1)
{
    if (unus_rot1 < 359)
        unus_rot1 += 1
    else
        unus_rot1 = 0
    if (unus_rot2 < 359)
        unus_rot2 += 1
    else
        unus_rot2 = 0
    if (unus_col1 < 255)
        unus_col1 += 2
    else
        unus_col1 = 0
    if (unus_col2 < 255)
        unus_col2 += 2
    else
        unus_col2 = 0
    var _unus_rainbow1 = make_color_hsv(unus_col1, 120, 255)
    var _unus_rainbow2 = make_color_hsv(unus_col2, 120, 255)
    draw_sprite_ext(spr_effect31, 0, x, (y + 16), 1.5, 1.5, unus_rot1, _unus_rainbow1, 1)
    draw_sprite_ext(spr_effect31, 0, x, (y + 16), 1.5, 1.5, unus_rot2, _unus_rainbow2, 1)
}
scr_silh_start()
draw_self()
scr_silh_end()
