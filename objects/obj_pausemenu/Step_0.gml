switch section
{
    case "menu":
        if keyboard_check_pressed(global.key_up)
        {
            scr_1sound(sfx_woosh2)
            select1--
        }
        if keyboard_check_pressed(global.key_down)
        {
            scr_1sound(sfx_woosh2)
            select1++
        }
        if keyboard_check_pressed(global.key_jump)
        {
            scr_1sound(sfx_pop)
            switch select1
            {
                case 1:
                    with (obj_game)
                    {
                        audio_resume_all()
                        pause = (-pause)
                        with (pausefade)
                            yeah2 = 1
                        instance_activate_all()
                        instance_destroy(obj_pausemenu)
                    }
                    break
                case 2:
                    scr_pausemenu_restart()
                    break
                case 3:
                    section = "options"
                    break
                case 4:
                    if (global.level == "hub")
                        game_restart()
                    else
                    {
                        global.trainsfx = -4
                        audio_stop_all()
                        ds_list_clear(global.saveroom)
                        ds_list_clear(global.enemy_spawners)
                        game_restart()
                        with (instance_create_depth(x, y, -10, obj_fade))
                        {
                            alpha = 1
                            yeah2 = 1
                        }
                        room_goto(rm_hub_floor1)
                        global.treasure = 0
                        global.insecret = 0
                        global.heat = 1
                        global.heat_meter = 0
                        global.escape = 0
                        global.trainescape = 0
                        global.damage_milestone = 0
                        global.kill_milestone = 0
                        global.prankable = 1
                        global.timer_min = 0
                        global.timer_sec = 0
                        global.timer_ms = 0
                        global.score = 0
                        global.stylin_score = 0
                        global.combotimer = 0
                        global.combo = 0
                        global.secrets = 0
                        global.key = 0
                        global.lunchy = 0
                        global.mayogun = 0
                        global.laps = 0
                        global.jetpack_fuel = 5
                        global.graffitis = 0
                        global.fun_meter = 0
                        global.fun_meter_visible = 0
                        with (obj_camera)
                            mach_x = 0
                        with (obj_player)
                            doornum = "NONE"
                        with (obj_game)
                        {
                            pause = (-pause)
                            with (pausefade)
                                yeah2 = 1
                            instance_activate_all()
                            instance_destroy(obj_pausemenu)
                        }
                        instance_destroy(obj_comborank)
                        instance_destroy(obj_keybuddy)
                        instance_destroy(obj_lunchy)
                        instance_destroy(obj_tvtrigger)
                        with (obj_scorekeeper)
                        {
                            bigs_sound = 0
                            combometer_y = -450
                            comboscoreplus = 0
                            fakescore = 0
                            rmg_x = -10000
                            rmg_txt = "N"
                            rmg_active = 0
                            rmg_spr = spr_radiomessage_start
                            rmg2_spr = spr_tv_player2_talk_start
                            rmg_img = 0
                            rmg2_img = 0
                            rmg_bubble = 0
                            current_comborank = 0
                        }
                        scr_transfo_msg_clear()
                        scr_message("")
                        global.level = "hub"
                        obj_scorekeeper.tutorial_tvshow = 0
                    }
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
                case 4:
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
                case 4:
                    fullscreen = 0
                    break
            }

        }
        break
}

