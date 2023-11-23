draw_set_font(global.itfont)
draw_set_color(c_gray)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
switch select
{
    case 1:
        draw_set_color(c_white)
        draw_set_halign(fa_right)
        draw_text_transformed(900, 540, "PHIL", 2, 2, 0)
        draw_set_color(c_gray)
        draw_set_halign(fa_left)
        draw_text_transformed(1000, 540, "BACKY", 2, 2, 0)
        break
    case 2:
        draw_set_halign(fa_right)
        draw_text_transformed(900, 540, "PHIL", 2, 2, 0)
        draw_set_color(c_white)
        draw_set_halign(fa_left)
        draw_text_transformed(1000, 540, "BACKY", 2, 2, 0)
        draw_set_color(c_gray)
        break
    case 3:
        draw_set_halign(fa_right)
        draw_text_transformed(900, 540, "PHIL", 2, 2, 0)
        draw_set_halign(fa_left)
        draw_text_transformed(1000, 540, "BACKY", 2, 2, 0)
        draw_set_color(c_yellow)
        draw_set_halign(fa_center)
        draw_text_transformed(950, 510, "CHIKN NUGGIT", 2, 2, 0)
        draw_set_color(c_gray)
        break
}

