if (prankdone == 1 && after_prank == 0)
{
    x += ((240 - x) * 0.025)
    y += ((270 - y) * 0.025)
}
else if (x < 478 || x > 482 || y < 268 || y > 272)
{
    x += ((480 - x) * 0.1)
    y += ((270 - y) * 0.1)
}
else
{
    x = 480
    y = 270
}
if (supre_wind > 0)
{
    image_speed = 0
    supre_wind--
}
else if (supre_wind != -1)
{
    image_speed = 1
    supre_wind = -1
}
if (sprite_index == spr_rank_intern_prank && image_index == 42 && image_speed == 0 && after_prank > 0)
    after_prank--
if (startdone == 1 && after_prank == 0)
{
    if (pre_wind > 0)
        pre_wind--
    else
    {
        if (paper_X > 0)
            paper_X += ((0 - paper_X) * 0.08)
        if (wind > 0)
            wind--
        else if (paper_X < 30)
        {
            switch phase
            {
                case 1:
                    faketime = ((faketimer_min * 3600) + (faketimer_sec * 60))
                    if (faketime < ((global.timer_min * 3600) + (global.timer_sec * 60)))
                    {
                        if (faketimer_sec < 60)
                        {
                            scr_1sound(sfx_tick)
                            faketimer_sec += 4
                        }
                        else if (faketimer_min < 60)
                        {
                            faketimer_min++
                            faketimer_sec = 0
                        }
                        else
                        {
                            faketimer_min = 0
                            faketimer_sec = 0
                        }
                    }
                    else
                    {
                        scr_sound(sfx_ding)
                        phase = 2
                        wind = 20
                        faketimer_min = global.timer_min
                        faketimer_sec = global.timer_sec
                    }
                    break
                case 2:
                    if (global.secrets > 0)
                    {
                        cur_secret++
                        global.secrets--
                        scr_sound(sfx_ding)
                    }
                    else
                        phase = 3
                    wind = 20
                    break
                case 3:
                    if (global.damage_milestone > 0)
                    {
                        cur_dmg++
                        global.damage_milestone--
                        scr_sound(sfx_tick)
                        wind = 2
                    }
                    else
                    {
                        phase = 4
                        wind = 20
                    }
                    break
                case 4:
                    if (global.kill_milestone > 0)
                    {
                        if (cur_kills > 50)
                        {
                            cur_kills += 4
                            global.kill_milestone -= 4
                            scr_sound(sfx_tick)
                            audio_sound_pitch(sfx_tick, 1.1)
                        }
                        else if (cur_kills > 25)
                        {
                            cur_kills += 2
                            global.kill_milestone -= 2
                            scr_sound(sfx_tick)
                            audio_sound_pitch(sfx_tick, 1.05)
                        }
                        else
                        {
                            cur_kills++
                            global.kill_milestone--
                            scr_sound(sfx_tick)
                            audio_sound_pitch(sfx_tick, 1)
                        }
                        wind = 2
                    }
                    else
                    {
                        audio_sound_pitch(sfx_tick, 1)
                        phase = 5
                        wind = 20
                    }
                    break
                case 5:
                    if (global.treasure == 1)
                    {
                        cur_treas = 1
                        scr_sound(sfx_ding)
                    }
                    phase = 6
                    wind = 20
                    break
                case 6:
                    if (fakescore < global.score)
                    {
                        scr_1sound(sfx_tick)
                        fakescore += 100
                    }
                    else
                    {
                        scr_sound(sfx_ding)
                        phase = 7
                        nowrank = 1
                        if (sprite_index != spr_rank_intern_prank)
                        {
                            if (global.score >= global.srank)
                                sprite_index = spr_rank_intern_srank
                            else if (global.score >= global.arank)
                                sprite_index = spr_rank_intern_arank
                            else if (global.score >= global.brank)
                                sprite_index = spr_rank_intern_brank
                            else if (global.score >= global.crank)
                                sprite_index = spr_rank_intern_crank
                            else
                                sprite_index = spr_rank_intern_drank
                            image_index = 0
                            image_speed = 1
                        }
                        else
                            rankingdone = 1
                        fakescore = global.score
                    }
                    break
            }

        }
    }
}
if (rankingdone == 1)
{
    if (voicerank_time > 0)
        voicerank_time--
    else if (voicerank_done == 0)
    {
        switch sprite_index
        {
            case spr_rank_intern_srank:
                break
            default:

        }

        voicerank_done = 1
    }
    with (obj_player)
    {
        if key_jump
        {
            if audio_is_playing(global.trainsfx)
                audio_stop_sound(global.trainsfx)
            global.treasure = 0
            global.insecret = 0
            global.level = "hub"
            global.heat = 1
            global.heat_meter = 0
            global.timer_min = 0
            global.timer_sec = 0
            global.timer_ms = 0
            global.prankable = 1
            global.gonnaprank = 0
            global.damage_milestone = 0
            global.kill_milestone = 0
            obj_scorekeeper.comboscoreplus = 0
            with (obj_scorekeeper)
            {
                bigs_sound = 0
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
            ds_list_clear(global.saveroom)
            ds_list_clear(global.enemy_spawners)
            game_restart()
            instance_destroy(obj_comborank)
            instance_destroy(obj_keybuddy)
            instance_destroy(obj_lunchy)
            instance_destroy(obj_tvtrigger)
            with (instance_create_depth(x, y, -10, obj_fade))
            {
                alpha = 1
                yeah2 = 1
            }
            with (obj_player)
                doornum = "NONE"
            room_goto(rm_hub_floor1)
            global.score = 0
            global.stylin_score = 0
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
            ini_open(global.savedata_ini)
            if (ini_read_real("score", "rooftop", 0) != 0 && ini_read_real("score", "ancient", 0) != 0 && ini_read_real("score", "cave", 0) != 0)
                global.galleryopen = 1
            else
                global.galleryopen = 0
            scr_transfo_msg_clear()
            scr_message("")
            ini_write_real("story", "backyintro_done", 1)
            ini_write_real("story", "tutorial_done", 1)
            ini_close()
        }
    }
}
var lay_id = layer_get_id("Background")
var bg_id = layer_background_get_id(lay_id)
if (sprite_index == spr_rank_intern_prank)
    layer_background_sprite(bg_id, spr_rank_bg7)
else if (phase < 6)
    layer_background_sprite(bg_id, spr_rank_bg1)
else if (fakescore >= global.srank)
    layer_background_sprite(bg_id, spr_rank_bg6)
else if (fakescore >= global.arank)
    layer_background_sprite(bg_id, spr_rank_bg5)
else if (fakescore >= global.brank)
    layer_background_sprite(bg_id, spr_rank_bg4)
else if (fakescore >= global.crank)
    layer_background_sprite(bg_id, spr_rank_bg3)
else
    layer_background_sprite(bg_id, spr_rank_bg2)
