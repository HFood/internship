draw_set_font(global.itfont)
draw_set_color(c_white)
draw_set_alpha(0)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (rmname_time < 120)
{
    rmname_time++
    draw_text_transformed(960, (40 + (rmname_y * 2)), rmname, 1, 1, 0)
}
else if (rmname_y > -320)
{
    rmname_y -= 4
    draw_text_transformed(960, (40 + rmname_y), rmname, 1, 1, 0)
}
if (pausetablet_y > -1080 && (!instance_exists(obj_pausemenu)))
{
    if (global.combo > 0)
        var _viewscore = (global.score + (10 + ((global.combo - 1) * 20)))
    else
        _viewscore = global.score
    draw_set_font(global.pausefont)
    draw_set_halign(fa_left)
    draw_sprite_ext(spr_pausemenu, 0, 960, (540 + pausetablet_y), 2, 2, 0, c_white, 1)
    if (global.level != "none")
    {
        if (_viewscore > global.srank)
        {
            if (global.prankable == 1 && global.treasure == 1 && global.laps > 0 && global.secrets >= 3)
                draw_sprite_ext(spr_pausemenu_ranks, 0, 960, (540 + pausetablet_y), 2, 2, 0, c_white, 1)
            else
                draw_sprite_ext(spr_pausemenu_ranks, 1, 960, (540 + pausetablet_y), 2, 2, 0, c_white, 1)
        }
        else if (_viewscore > global.arank)
            draw_sprite_ext(spr_pausemenu_ranks, 2, 960, (540 + pausetablet_y), 2, 2, 0, c_white, 1)
        else if (_viewscore > global.brank)
            draw_sprite_ext(spr_pausemenu_ranks, 3, 960, (540 + pausetablet_y), 2, 2, 0, c_white, 1)
        else if (_viewscore > global.crank)
            draw_sprite_ext(spr_pausemenu_ranks, 4, 960, (540 + pausetablet_y), 2, 2, 0, c_white, 1)
        else
            draw_sprite_ext(spr_pausemenu_ranks, 5, 960, (540 + pausetablet_y), 2, 2, 0, c_white, 1)
    }
    draw_text_transformed(560, (570 + pausetablet_y), _viewscore, 2, 2, 0)
    draw_sprite_ext(spr_pausemenu_secrets, global.secrets, 960, (540 + pausetablet_y), 2, 2, 0, c_white, 1)
}
