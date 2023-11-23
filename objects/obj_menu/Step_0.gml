switch select1
{
    case 1:
        title_y += ((30 - title_y) * 0.1)
        break
    case 2:
        title_y += ((15 - title_y) * 0.1)
        break
    case 3:
        title_y += ((0 - title_y) * 0.1)
        break
}

switch section
{
    case "menu":
        title_shk_x = irandom_range(-1, 1)
        title_shk_y = irandom_range(-1, 1)
        if keyboard_check_pressed(global.key_up)
        {
            scr_1sound(sfx_woosh2)
            select1--
            if (select1 > 0)
                title_color--
        }
        if keyboard_check_pressed(global.key_down)
        {
            scr_1sound(sfx_woosh2)
            select1++
            if (select1 <= 3)
                title_color++
        }
        if keyboard_check_pressed(vk_f5)
        {
            scr_1sound(sfx_pop)
            section = "manual"
        }
        if keyboard_check_pressed(global.key_jump)
        {
            scr_1sound(sfx_pop)
            switch select1
            {
                case 1:
                    with (instance_create_depth(x, y, -10, obj_fade))
                    {
                        alpha = 1
                        yeah2 = 1
                    }
                    room_goto(rm_charselect)
                    instance_destroy()
                    break
                case 2:
                    section = "options"
                    break
                case 3:
                    game_end()
                    break
                case 4:
                    room_goto(rm_client)
                    instance_destroy()
                    break
                case 5:
                    room_goto(rm_server)
                    instance_destroy()
                    break
            }

        }
        break
    case "options":
        if keyboard_check_pressed(vk_escape)
        {
            scr_1sound(sfx_woosh1)
            section = "menu"
        }
        if keyboard_check_pressed(global.key_up)
        {
            scr_1sound(sfx_woosh2)
            select2--
        }
        if keyboard_check_pressed(global.key_down)
        {
            scr_1sound(sfx_woosh2)
            select2++
        }
        if keyboard_check_pressed(global.key_jump)
        {
            scr_1sound(sfx_pop)
            switch select2
            {
                case 4:
                    section = "config"
                    break
                case 6:
                    section = "erasedata"
                    break
            }

        }
        if keyboard_check_pressed(global.key_left)
        {
            scr_1sound(sfx_woosh2)
            switch select2
            {
                case 1:
                    if keyboard_check(global.key_dash)
                        vol_gen -= 5
                    else
                        vol_gen -= 10
                    break
                case 2:
                    if keyboard_check(global.key_dash)
                        vol_sfx -= 5
                    else
                        vol_sfx -= 10
                    break
                case 3:
                    if keyboard_check(global.key_dash)
                        vol_mu -= 5
                    else
                        vol_mu -= 10
                    break
                case 5:
                    fullscreen = 1
                    break
            }

        }
        if keyboard_check_pressed(global.key_right)
        {
            scr_1sound(sfx_woosh2)
            switch select2
            {
                case 1:
                    if keyboard_check(global.key_dash)
                        vol_gen += 5
                    else
                        vol_gen += 10
                    break
                case 2:
                    if keyboard_check(global.key_dash)
                        vol_sfx += 5
                    else
                        vol_sfx += 10
                    break
                case 3:
                    if keyboard_check(global.key_dash)
                        vol_mu += 5
                    else
                        vol_mu += 10
                    break
                case 5:
                    fullscreen = 0
                    break
            }

        }
        break
    case "erasedata":
        if keyboard_check_pressed(vk_escape)
        {
            scr_1sound(sfx_woosh1)
            select3 = 2
            section = "options"
        }
        if keyboard_check_pressed(global.key_left)
        {
            scr_1sound(sfx_woosh2)
            select3 = 1
        }
        if keyboard_check_pressed(global.key_right)
        {
            scr_1sound(sfx_woosh2)
            select3 = 2
        }
        if keyboard_check_pressed(global.key_jump)
        {
            audio_stop_sound(sfx_pop)
            var _popsnd = audio_play_sound(sfx_pop, 1, false)
            audio_sound_pitch(_popsnd, 1.25)
            switch select3
            {
                case 1:
                    ini_open(global.savedata_ini)
                    ini_section_delete("score")
                    ini_section_delete("secrets")
                    ini_section_delete("story")
                    ini_section_delete("config")
                    ini_section_delete("treasure")
                    ini_write_real("srank", "crateburg", 8000)
                    ini_write_real("srank", "rooftop", 6400)
                    ini_write_real("srank", "ancient", 10000)
                    ini_write_real("srank", "cave", 8100)
                    ini_write_real("srank", "freezer", 10000)
                    if (ini_read_real("score", "rooftop", 0) != 0 && ini_read_real("score", "ancient", 0) != 0 && ini_read_real("score", "cave", 0) != 0)
                        global.galleryopen = 1
                    else
                        global.galleryopen = 0
                    global.coins = ini_read_real("story", "coins", 0)
                    global.tutorial_done = ini_read_real("story", "tutorial_done", 0)
                    global.backyintro_done = ini_read_real("story", "backyintro_done", 0)
                    global.key_left = ini_read_real("config", "key_left", 37)
                    global.key_right = ini_read_real("config", "key_right", 39)
                    global.key_up = ini_read_real("config", "key_up", 38)
                    global.key_down = ini_read_real("config", "key_down", 40)
                    global.key_jump = ini_read_real("config", "key_jump", 90)
                    global.key_grab = ini_read_real("config", "key_grab", 88)
                    global.key_taunt = ini_read_real("config", "key_taunt", 67)
                    global.key_shoot = ini_read_real("config", "key_shoot", 86)
                    global.key_dash = ini_read_real("config", "key_dash", 16)
                    ini_close()
                    instance_destroy(obj_menu_dataerased)
                    instance_create_depth(x, y, -2, obj_menu_dataerased)
                    section = "options"
                    break
                case 2:
                    section = "options"
                    select3 = 2
                    break
            }

        }
        break
    case "manual":
        if keyboard_check_pressed(vk_escape)
        {
            manual_select = 0
            scr_1sound(sfx_woosh1)
            section = "menu"
        }
        if keyboard_check_pressed(global.key_left)
        {
            scr_1sound(sfx_woosh2)
            manual_select--
        }
        if keyboard_check_pressed(global.key_right)
        {
            scr_1sound(sfx_woosh2)
            manual_select++
        }
        break
    case "config":
        if (configing == 1)
        {
            if keyboard_check_pressed(vk_anykey)
            {
                switch config_select
                {
                    case 2:
                        global.key_left = keyboard_lastkey
                        break
                    case 3:
                        global.key_right = keyboard_lastkey
                        break
                    case 4:
                        global.key_up = keyboard_lastkey
                        break
                    case 5:
                        global.key_down = keyboard_lastkey
                        break
                    case 6:
                        global.key_jump = keyboard_lastkey
                        break
                    case 7:
                        global.key_grab = keyboard_lastkey
                        break
                    case 8:
                        global.key_taunt = keyboard_lastkey
                        break
                    case 9:
                        global.key_shoot = keyboard_lastkey
                        break
                    case 10:
                        global.key_dash = keyboard_lastkey
                        break
                }

                audio_stop_sound(sfx_pop)
                _popsnd = audio_play_sound(sfx_pop, 1, false)
                audio_sound_pitch(_popsnd, 1.25)
                configing = 0
            }
        }
        else
        {
            if keyboard_check_pressed(vk_escape)
            {
                scr_1sound(sfx_woosh1)
                section = "options"
            }
            if keyboard_check_pressed(global.key_up)
            {
                scr_1sound(sfx_woosh2)
                config_select--
            }
            if keyboard_check_pressed(global.key_down)
            {
                scr_1sound(sfx_woosh2)
                config_select++
            }
            if keyboard_check_pressed(global.key_jump)
            {
                if (config_select == 1)
                {
                    scr_1sound(sfx_woosh1)
                    section = "options"
                }
                else
                {
                    scr_1sound(sfx_pop)
                    configing = 1
                }
            }
        }
        break
}

