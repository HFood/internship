draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(global.itfont)
draw_self()
if (instance_exists(cursid) && rm != 3)
{
    draw_text(x, (y - 96), _score)
    draw_text(x, (y - 128), (string(_secrets) + " OF 3 SECRETS"))
    switch _treasure
    {
        case 1:
            draw_sprite_ext(spr_treasure_demo2, 0, x, (y - 170), 1, 1, 0, c_white, 1)
            break
        case 0:
            draw_sprite_ext(spr_treasure_demo2, 0, x, (y - 170), 1, 1, 0, c_black, 1)
            break
    }

}
