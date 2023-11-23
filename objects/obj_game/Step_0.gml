if (room != rm_hub && room != rm_gallery && room != rm_menu && room != rm_timesup && room != rm_rank && room != rm_intro && room != rm_intro_hfood && room != rm_hub_floor1 && room != rm_hub_floor1_secret1 && room != rm_hub_floor2 && pause == -1)
{
    if (global.timer_ms < 59)
        global.timer_ms++
    else if (global.timer_sec < 59)
    {
        global.timer_sec++
        global.timer_ms = 0
    }
    else if (global.timer_min < 59)
    {
        global.timer_min++
        global.timer_ms = 0
        global.timer_sec = 0
    }
    else
    {
        global.timer_min = 0
        global.timer_sec = 0
        global.timer_ms = 0
    }
}
if instance_exists(obj_pausemenu)
{
    if (keyboard_check_pressed(vk_escape) && room != rm_menu && room != rm_timesup && room != rm_intro && room != rm_intro_hfood && room != rm_rank && room != rm_charselect && obj_pausemenu.section == "menu")
    {
        pause = (-pause)
        if (pause == 1)
        {
            pausetablet_y = -1080
            pausefade = instance_create_depth(x, y, -1, obj_fade)
            with (pausefade)
                type = "pause"
        }
        else
        {
            instance_activate_all()
            audio_resume_all()
            instance_destroy(obj_pausemenu)
            with (pausefade)
                yeah2 = 1
            instance_activate_all()
        }
    }
}
else if (keyboard_check_pressed(vk_escape) && room != rm_menu && room != rm_timesup && room != rm_intro && room != rm_intro_hfood && room != rm_rank && room != rm_charselect)
{
    pause = (-pause)
    if (pause == 1)
    {
        pausetablet_y = -1080
        pausefade = instance_create_depth(x, y, -1, obj_fade)
        with (pausefade)
            type = "pause"
    }
    else
    {
        instance_activate_all()
        audio_resume_all()
        instance_destroy(obj_pausemenu)
        with (pausefade)
            yeah2 = 1
        instance_activate_all()
    }
}
if (global.developer_mode == 1)
{
    if keyboard_check_pressed(vk_f3)
    {
        if (global.coop == 1)
        {
            show_debug_message("Co-op disabled.")
            scr_message("COOP MODE DISABLED.")
            if instance_exists(obj_player2)
                instance_destroy(obj_player2)
            global.coop = 0
        }
        else
        {
            show_debug_message("Co-op enabled.")
            scr_message("COOP MODE ENABLED. HAVE FUN!")
            with (instance_create_depth(obj_player.x, obj_player.y, 1, obj_player2))
            {
                if (global.character == "intern")
                    character = "backy"
                else
                    character = "intern"
                scr_playerspr()
                x = obj_player.x
                y = obj_player.y
            }
            global.coop = 1
        }
    }
    if keyboard_check_pressed(vk_f4)
    {
        if (global.showcollisions == 1)
        {
            show_debug_message("Collisions disabled.")
            global.showcollisions = 0
        }
        else
        {
            show_debug_message("Collisions enabled.")
            global.showcollisions = 1
        }
    }
    if keyboard_check_pressed(vk_f9)
    {
        if (global.camera_smooth == 1)
        {
            show_debug_message("Smooth camera OFF.")
            global.camera_smooth = 0
        }
        else
        {
            show_debug_message("Smooth camera ON.")
            global.camera_smooth = 1
        }
    }
    if keyboard_check_pressed(vk_f8)
        global.escape = 1
    if keyboard_check_pressed(vk_f2)
    {
        show_debug_message("P rank requirements achieved.")
        global.score = (global.srank + 1000)
        global.prankable = 1
        global.laps++
        global.escape = 1
        global.treasure = 1
        global.secrets = 3
        global.combo = 100
        global.combotimer = global.combotimer_full
        global.exittimer_min = 1
        global.kill_milestone = 120
    }
    if keyboard_check_pressed(vk_f5)
    {
        show_debug_message("S rank requirements achieved. (almost)")
        global.score = (global.srank + 20)
        global.prankable = 1
        global.laps++
        global.escape = 1
        global.combotimer = global.combotimer_full
        global.exittimer_min = 1
        global.kill_milestone = 120
    }
    if keyboard_check_pressed(vk_f6)
    {
        show_debug_message("49 combo reached.")
        global.combo = 49
        global.combotimer = global.combotimer_full
    }
}
if (pause == 1)
{
    if (pausetablet_y < 0)
        pausetablet_y += 108
    if (pausefade.yeah == 1 && (!instance_exists(obj_pausemenu)))
    {
        audio_pause_all()
        audio_play_sound(mu_pausemenu, 1, true)
        instance_create_depth(x, y, -1, obj_pausemenu)
    }
}
else if (pause == -1)
{
    if audio_is_playing(global.trainsfx)
    {
        if collision_line(obj_player.x, obj_player.y, obj_player.x, 1, obj_solid, false, true)
            audio_sound_gain(global.trainsfx, 0.2, 0)
        else
            audio_sound_gain(global.trainsfx, 0.3, 0)
    }
    audio_stop_sound(mu_pausemenu)
    if (pausetablet_y > -1080)
        pausetablet_y -= 108
}
if (global.escape == 1 && pause == -1)
{
    if (global.escape == 1)
    {
        if (escape_red > 253)
            escape_red_turn = -1
        if (escape_red <= 200)
            escape_red_turn = 1
        switch escape_red_turn
        {
            case 1:
                escape_red += escape_red_spd
                escape_red_spd = 0.5
                break
            case -1:
                escape_red -= escape_red_spd
                escape_red_spd = 0.5
                break
        }

        var bg_blend = make_color_rgb(255, escape_red, escape_red)
        var lay_id = layer_get_id("Background")
        var bg_id = layer_background_get_id(lay_id)
        layer_background_blend(bg_id, bg_blend)
    }
    if (global.insecret == 0 && instance_exists(obj_camera))
    {
        if (crackcd > 0)
            crackcd--
        else
        {
            with (instance_create_depth((obj_camera.x + irandom_range(-480, 480)), (obj_camera.y - 300), depth, obj_panicdebris))
            {
                switch global.level
                {
                    case "rooftop":
                        if (room == rm_rooftop1 || room == rm_rooftop1a || room == rm_rooftop2 || room == rm_rooftop3 || room == rm_rooftop4)
                            sprite_index = spr_panicdebris_rooftop
                        else
                            sprite_index = spr_panicdebris_rooftop2
                        break
                    case "ancient":
                        if (room == rm_ancient1 || room == rm_ancient2 || room == rm_ancient3 || room == rm_ancient4 || room == rm_ancient5)
                            sprite_index = spr_panicdebris_ancient
                        else
                            sprite_index = spr_panicdebris_ancient2
                        break
                    case "cave":
                        if (room == rm_cave1 || room == rm_cave1a || room == rm_cave2 || room == rm_cave3 || room == rm_cave3a || room == rm_cave4)
                            sprite_index = spr_panicdebris_cave
                        else
                            sprite_index = spr_panicdebris_cave2
                        break
                    case "resort":
                        if (room == rm_resort4 || room == rm_resort5 || room == rm_resort8)
                            sprite_index = spr_panicdebris_resort
                        else if (room == rm_resort1 || room == rm_resort2 || room == rm_resort3)
                            sprite_index = spr_panicdebris_resort1
                        else
                            sprite_index = spr_panicdebris_resort2
                        break
                    case "urban":
                        if (room == rm_urban1 || room == rm_cave1a || room == rm_cave2 || room == rm_cave3 || room == rm_cave3a || room == rm_cave4)
                            sprite_index = spr_panicdebris_rooftop
                        else
                            sprite_index = spr_panicdebris_rooftop2
                        break
                    case "freezer":
                        if (room == rm_freezer5 || room == rm_freezer5a || room == rm_freezer6 || room == rm_freezer7 || room == rm_freezer10 || room == rm_freezer11 || room == rm_freezer12)
                            sprite_index = spr_panicdebris_freezer2
                        else
                            sprite_index = spr_panicdebris_freezer1
                        break
                    case "crateburg":
                        sprite_index = spr_panicdebris_crateburg
                        break
                    case "train":
                        sprite_index = spr_panicdebris_train
                        break
                    case "circus":
                        if (room == rm_circus1 || room == rm_circus2 || room == rm_circus11)
                            sprite_index = spr_panicdebris_circus1
                        else
                            sprite_index = spr_panicdebris_circus2
                        break
                }

                image_index = irandom_range(0, 5)
                hsp = irandom_range(-6, 6)
                vsp = irandom_range(2, 0)
            }
            crackcd = 8
        }
    }
    if (global.insecret == 0)
    {
        if (global.exittimer_ms > 0)
            global.exittimer_ms--
        else if (global.exittimer_sec > 0)
        {
            global.score -= 5
            global.exittimer_sec--
            global.exittimer_ms = 59
        }
        else if (global.exittimer_min > 0)
        {
            global.exittimer_min--
            global.exittimer_ms = 59
            global.exittimer_sec = 59
        }
        else
        {
            global.exittimer_min = 0
            global.exittimer_sec = 0
            global.exittimer_ms = 0
            if (escape_scoremin < 60)
                escape_scoremin++
            else
            {
                global.score -= 5
                escape_scoremin = 0
            }
        }
    }
}
if (global.trainescape == 1 && pause == -1)
{
    if (global.traintimer_ms > 0)
        global.traintimer_ms--
    else if (global.traintimer_sec > 0)
    {
        global.traintimer_sec--
        global.traintimer_ms = 59
    }
    else if (global.traintimer_min > 0)
    {
        global.traintimer_min--
        global.traintimer_ms = 59
        global.traintimer_sec = 59
    }
    else
    {
        global.traintimer_min = 0
        global.traintimer_sec = 0
        global.traintimer_ms = 0
    }
}
if (global.level == "circus" && global.insecret == 0)
{
    if (global.fun_meter > 0)
        global.fun_meter--
}
