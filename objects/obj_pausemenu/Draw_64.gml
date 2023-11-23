draw_set_font(global.itfont)
draw_set_color(c_gray)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (global.combo > 0)
    var _viewscore = (global.score + (10 + ((global.combo - 1) * 20)))
else
    _viewscore = global.score
switch section
{
    case "menu":
        draw_set_halign(fa_right)
        draw_set_font(global.itfont_numbersmall)
        if (global.timer_sec > 9)
            draw_text_transformed(1900, 1050, ((string(global.timer_min) + ":") + string(global.timer_sec)), 2, 2, 0)
        else
            draw_text_transformed(1900, 1050, ((string(global.timer_min) + ":0") + string(global.timer_sec)), 2, 2, 0)
        draw_set_halign(fa_left)
        draw_set_font(global.pausefont)
        draw_sprite_ext(spr_pausemenu, (select1 - 1), 960, 540, 2, 2, 0, c_white, 1)
        if (global.level != "none" && global.level != "hub")
        {
            if (_viewscore > global.srank)
            {
                if (global.prankable == 1 && global.treasure == 1 && global.laps > 0 && global.secrets >= 3)
                    draw_sprite_ext(spr_pausemenu_ranks, 0, 960, 540, 2, 2, 0, c_white, 1)
                else
                    draw_sprite_ext(spr_pausemenu_ranks, 1, 960, 540, 2, 2, 0, c_white, 1)
            }
            else if (_viewscore > global.arank)
                draw_sprite_ext(spr_pausemenu_ranks, 2, 960, 540, 2, 2, 0, c_white, 1)
            else if (_viewscore > global.brank)
                draw_sprite_ext(spr_pausemenu_ranks, 3, 960, 540, 2, 2, 0, c_white, 1)
            else if (_viewscore > global.crank)
                draw_sprite_ext(spr_pausemenu_ranks, 4, 960, 540, 2, 2, 0, c_white, 1)
            else
                draw_sprite_ext(spr_pausemenu_ranks, 5, 960, 540, 2, 2, 0, c_white, 1)
        }
        draw_text_transformed(560, 570, _viewscore, 2, 2, 0)
        draw_sprite_ext(spr_pausemenu_secrets, global.secrets, 960, 540, 2, 2, 0, c_white, 1)
        draw_set_font(global.itfont)
        break
    case "options":
        switch select2
        {
            case 1:
                draw_set_color(c_white)
                draw_text_transformed(960, 360, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(960, 480, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_text_transformed(960, 600, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                draw_text_transformed(650, 720, "FULLSCREEN", 2, 2, 0)
                draw_text_transformed(1270, 720, "WINDOWED", 2, 2, 0)
                break
            case 2:
                draw_text_transformed(960, 360, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(960, 480, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(960, 600, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                draw_text_transformed(650, 720, "FULLSCREEN", 2, 2, 0)
                draw_text_transformed(1270, 720, "WINDOWED", 2, 2, 0)
                break
            case 3:
                draw_text_transformed(960, 360, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_text_transformed(960, 480, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(960, 600, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(650, 720, "FULLSCREEN", 2, 2, 0)
                draw_text_transformed(1270, 720, "WINDOWED", 2, 2, 0)
                break
            case 4:
                draw_text_transformed(960, 360, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_text_transformed(960, 480, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_text_transformed(960, 600, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                if (fullscreen == 1)
                {
                    draw_set_color(c_white)
                    draw_text_transformed(650, 720, "FULLSCREEN", 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1270, 720, "WINDOWED", 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(650, 720, "FULLSCREEN", 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1270, 720, "WINDOWED", 2, 2, 0)
                    draw_set_color(c_gray)
                }
                break
        }

        break
}

