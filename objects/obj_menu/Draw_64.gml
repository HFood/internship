draw_set_font(global.itfont)
draw_set_color(c_gray)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
switch section
{
    case "menu":
        draw_sprite_ext(spr_title_demo2_bg, title_color, 960, 540, 2, 2, 0, c_white, 1)
        draw_sprite_ext(spr_title_demo2, title_spr, (960 + title_shk_x), ((540 + title_shk_y) + title_y), 2, 2, 0, c_white, 1)
        draw_sprite_ext(spr_manualsign, 0, 160, 96, 2, 2, 0, c_white, 1)
        draw_sprite_ext(spr_internship_demo2_logo, 0, 960, 150, 1.5, 1.5, 0, c_white, 1)
        draw_set_halign(fa_right)
        draw_set_color(c_white)
        draw_set_halign(fa_center)
        draw_set_color(c_gray)
        switch select1
        {
            case 1:
                draw_set_color(c_white)
                draw_text_transformed(960, 720, "START", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(960, 820, "OPTIONS", 2, 2, 0)
                draw_text_transformed(960, 920, "QUIT", 2, 2, 0)
                break
            case 2:
                draw_text_transformed(960, 720, "START", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(960, 820, "OPTIONS", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(960, 920, "QUIT", 2, 2, 0)
                break
            case 3:
                draw_text_transformed(960, 720, "START", 2, 2, 0)
                draw_text_transformed(960, 820, "OPTIONS", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(960, 920, "QUIT", 2, 2, 0)
                draw_set_color(c_gray)
                break
            case 4:
                draw_set_color(c_white)
                draw_text_transformed(430, 920, "CLIENT", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(1490, 920, "SERVER", 2, 2, 0)
                break
            case 5:
                draw_text_transformed(430, 920, "CLIENT", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(1490, 920, "SERVER", 2, 2, 0)
                draw_set_color(c_gray)
                break
        }

        break
    case "options":
        draw_set_color(c_black)
        draw_rectangle(0, 0, 1920, 1080, false)
        draw_set_color(c_gray)
        switch select2
        {
            case 1:
                draw_set_color(c_white)
                draw_text_transformed(960, 290, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(960, 390, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_text_transformed(960, 490, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                draw_text_transformed(960, 590, "KEY CONFIG", 2, 2, 0)
                draw_text_transformed(650, 690, "FULLSCREEN", 2, 2, 0)
                draw_text_transformed(1270, 690, "WINDOWED", 2, 2, 0)
                draw_text_transformed(960, 790, "ERASE DATA", 2, 2, 0)
                break
            case 2:
                draw_text_transformed(960, 290, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(960, 390, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(960, 490, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                draw_text_transformed(960, 590, "KEY CONFIG", 2, 2, 0)
                draw_text_transformed(650, 690, "FULLSCREEN", 2, 2, 0)
                draw_text_transformed(1270, 690, "WINDOWED", 2, 2, 0)
                draw_text_transformed(960, 790, "ERASE DATA", 2, 2, 0)
                break
            case 3:
                draw_text_transformed(960, 290, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_text_transformed(960, 390, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(960, 490, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(960, 590, "KEY CONFIG", 2, 2, 0)
                draw_text_transformed(650, 690, "FULLSCREEN", 2, 2, 0)
                draw_text_transformed(1270, 690, "WINDOWED", 2, 2, 0)
                draw_text_transformed(960, 790, "ERASE DATA", 2, 2, 0)
                break
            case 4:
                draw_text_transformed(960, 290, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_text_transformed(960, 390, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_text_transformed(960, 490, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(960, 590, "KEY CONFIG", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(650, 690, "FULLSCREEN", 2, 2, 0)
                draw_text_transformed(1270, 690, "WINDOWED", 2, 2, 0)
                draw_text_transformed(960, 790, "ERASE DATA", 2, 2, 0)
                break
            case 5:
                draw_text_transformed(960, 290, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_text_transformed(960, 390, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_text_transformed(960, 490, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                draw_text_transformed(960, 590, "KEY CONFIG", 2, 2, 0)
                if (fullscreen == 1)
                {
                    draw_set_color(c_white)
                    draw_text_transformed(650, 690, "FULLSCREEN", 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1270, 690, "WINDOWED", 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(650, 690, "FULLSCREEN", 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1270, 690, "WINDOWED", 2, 2, 0)
                    draw_set_color(c_gray)
                }
                draw_text_transformed(960, 790, "ERASE DATA", 2, 2, 0)
                break
            case 6:
                draw_text_transformed(960, 290, ("MASTER VOL - %" + string(vol_gen)), 2, 2, 0)
                draw_text_transformed(960, 390, ("SOUND VOL - %" + string(vol_sfx)), 2, 2, 0)
                draw_text_transformed(960, 490, ("MUSIC VOL - %" + string(vol_mu)), 2, 2, 0)
                draw_text_transformed(960, 590, "KEY CONFIG", 2, 2, 0)
                draw_text_transformed(650, 690, "FULLSCREEN", 2, 2, 0)
                draw_text_transformed(1270, 690, "WINDOWED", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(960, 790, "ERASE DATA", 2, 2, 0)
                draw_set_color(c_gray)
                break
        }

        break
    case "erasedata":
        draw_sprite_ext(spr_erasedata, 0, 960, 540, 2, 2, 0, c_white, 1)
        draw_sprite_ext(spr_erasedata, 0, 961, 540, 2, 2, 0, c_white, 1)
        switch select3
        {
            case 1:
                draw_set_color(c_white)
                draw_text_transformed(840, 740, "YES", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(1080, 740, "NO", 2, 2, 0)
                break
            case 2:
                draw_text_transformed(840, 740, "YES", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(1080, 740, "NO", 2, 2, 0)
                draw_set_color(c_gray)
                break
        }

        break
    case "manual":
        draw_sprite_ext(spr_manual, manual_select, 960, 540, 2, 2, 0, c_white, 1)
        break
    case "config":
        draw_set_color(c_black)
        draw_rectangle(0, 0, 1920, 1080, false)
        draw_set_color(c_gray)
        switch config_select
        {
            case 1:
                draw_set_halign(fa_right)
                draw_set_color(c_white)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_halign(fa_left)
                draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                break
            case 2:
                draw_set_halign(fa_right)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_halign(fa_left)
                if (configing == 1)
                {
                    draw_set_color(c_white)
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                break
            case 3:
                draw_set_halign(fa_right)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_halign(fa_left)
                if (configing == 1)
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                break
            case 4:
                draw_set_halign(fa_right)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_halign(fa_left)
                if (configing == 1)
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                break
            case 5:
                draw_set_halign(fa_right)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_halign(fa_left)
                if (configing == 1)
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                break
            case 6:
                draw_set_halign(fa_right)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_halign(fa_left)
                if (configing == 1)
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                break
            case 7:
                draw_set_halign(fa_right)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_halign(fa_left)
                if (configing == 1)
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                break
            case 8:
                draw_set_halign(fa_right)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_halign(fa_left)
                if (configing == 1)
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                break
            case 9:
                draw_set_halign(fa_right)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_set_color(c_gray)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_halign(fa_left)
                if (configing == 1)
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_set_color(c_gray)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                else
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                break
            case 10:
                draw_set_halign(fa_right)
                draw_text_transformed(860, 90, "BACK", 2, 2, 0)
                draw_text_transformed(860, 190, "LEFT", 2, 2, 0)
                draw_text_transformed(860, 290, "RIGHT", 2, 2, 0)
                draw_text_transformed(860, 390, "UP", 2, 2, 0)
                draw_text_transformed(860, 490, "DOWN", 2, 2, 0)
                draw_text_transformed(860, 590, "JUMP", 2, 2, 0)
                draw_text_transformed(860, 690, "SPIN", 2, 2, 0)
                draw_text_transformed(860, 790, "TAUNT", 2, 2, 0)
                draw_text_transformed(860, 890, "SHOOT", 2, 2, 0)
                draw_set_color(c_white)
                draw_text_transformed(860, 990, "DASH", 2, 2, 0)
                draw_set_color(c_gray)
                draw_set_halign(fa_left)
                if (configing == 1)
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_set_color(c_white)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                    draw_set_color(c_gray)
                }
                else
                {
                    draw_text_transformed(1060, 190, scr_keyname(global.key_left), 2, 2, 0)
                    draw_text_transformed(1060, 290, scr_keyname(global.key_right), 2, 2, 0)
                    draw_text_transformed(1060, 390, scr_keyname(global.key_up), 2, 2, 0)
                    draw_text_transformed(1060, 490, scr_keyname(global.key_down), 2, 2, 0)
                    draw_text_transformed(1060, 590, scr_keyname(global.key_jump), 2, 2, 0)
                    draw_text_transformed(1060, 690, scr_keyname(global.key_grab), 2, 2, 0)
                    draw_text_transformed(1060, 790, scr_keyname(global.key_taunt), 2, 2, 0)
                    draw_text_transformed(1060, 890, scr_keyname(global.key_shoot), 2, 2, 0)
                    draw_text_transformed(1060, 990, scr_keyname(global.key_dash), 2, 2, 0)
                }
                break
        }

        break
}

