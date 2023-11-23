function scr_pausemenu_restart() //gml_Script_scr_pausemenu_restart
{
    if (room != rm_timesup && global.level != "hub")
    {
        global.trainsfx = -4
        global.treasure = 0
        global.insecret = 0
        global.heat = 1
        global.heat_meter = 0
        global.timer_min = 0
        global.timer_sec = 0
        global.timer_ms = 0
        global.combotimer = 0
        audio_stop_all()
        instance_destroy(obj_player)
        ds_list_clear(global.saveroom)
        ds_list_clear(global.enemy_spawners)
        global.escape = 0
        global.trainescape = 0
        global.damage_milestone = 0
        global.kill_milestone = 0
        global.prankable = 1
        global.score = 0
        global.stylin_score = 0
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
        global.arena = 0
        global.arena_round = 0
        room_restart()
        scr_levelmusic()
        with (obj_camera)
            mach_x = 0
        switch global.level
        {
            case "tutorial":
                room_goto(rm_tutorial1)
                break
            case "rooftop":
                room_goto(rm_rooftop1)
                break
            case "ancient":
                room_goto(rm_ancient1)
                break
            case "cave":
                room_goto(rm_cave1)
                break
            case "resort":
                room_goto(rm_resort1)
                break
            case "urban":
                room_goto(rm_urban1)
                break
            case "crateburg":
                room_goto(rm_crateburg1)
                break
            case "freezer":
                room_goto(rm_freezer1)
                break
            case "circus":
                room_goto(rm_circus1)
                break
            case "train":
                room_goto(rm_train1)
                break
            case "ship":
                room_goto(rm_ship1)
                break
        }

        with (obj_game)
        {
            pause = (-pause)
            instance_destroy(pausefade)
        }
        instance_activate_all()
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
        }
        scr_message("")
        scr_transfo_msg_clear()
        obj_scorekeeper.tutorial_tvshow = 0
        instance_destroy()
    }
}

