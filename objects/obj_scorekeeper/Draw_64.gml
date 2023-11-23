draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (global.combo > 0)
    var _viewscore = (global.score + (10 + ((global.combo - 1) * 20)))
else
    _viewscore = global.score
if (room != rm_timesup)
{
    if (global.level == "hub" && global.escape == 0)
    {
        draw_set_alpha(1)
        draw_set_font(global.itfont)
        draw_set_alpha(1)
    }
    else if (room != rm_charselect)
    {
        if (global.level == "circus" && global.escape == 0 && room != rm_circus1 && room != rm_circus2 && room != rm_circus11)
        {
            draw_set_alpha(1)
            draw_set_font(global.itfont)
            draw_text(1700, (730 + funmet_y), "FUN METER")
            if (global.fun_meter_visible == 0)
            {
                draw_sprite_ext(spr_hud_funmeter, 0, 1700, (860 + funmet_y), 2, 2, 0, c_black, 1)
                draw_sprite_ext(spr_hud_funmeter_bar, 0, 1700, (1000 + funmet_y), 2, 2, 0, c_black, 1)
            }
            else if (global.fun_meter >= global.fun_meter_good)
            {
                draw_sprite_ext(spr_hud_funmeter, 0, 1700, (860 + funmet_y), 2, 2, 0, c_white, 1)
                draw_set_color(0x00AEFF)
                draw_sprite_ext(spr_hud_funmeter_bar, 0, 1700, (1000 + funmet_y), 2, 2, 0, c_white, 1)
                draw_sprite_part_ext(spr_hud_funmeter_bar2, 0, 0, 0, ((global.fun_meter / global.fun_meter_full) * 140), 20, 1561, (980 + funmet_y), 2, 2, 0x00AEFF, 1)
            }
            else if (global.fun_meter >= (global.fun_meter_good * 0.75))
            {
                draw_sprite_ext(spr_hud_funmeter, 1, 1700, (860 + funmet_y), 2, 2, 0, c_white, 1)
                draw_set_color(0x2D2DFF)
                draw_sprite_ext(spr_hud_funmeter_bar, 0, 1700, (1000 + funmet_y), 2, 2, 0, c_white, 1)
                draw_sprite_part_ext(spr_hud_funmeter_bar2, 0, 0, 0, ((global.fun_meter / global.fun_meter_full) * 140), 20, 1561, (980 + funmet_y), 2, 2, 0x2D2DFF, 1)
            }
            else if (global.fun_meter >= (global.fun_meter_good * 0.5))
            {
                draw_sprite_ext(spr_hud_funmeter, 2, 1700, (860 + funmet_y), 2, 2, 0, c_white, 1)
                draw_set_color(0xFF823D)
                draw_sprite_ext(spr_hud_funmeter_bar, 0, 1700, (1000 + funmet_y), 2, 2, 0, c_white, 1)
                draw_sprite_part_ext(spr_hud_funmeter_bar2, 0, 0, 0, ((global.fun_meter / global.fun_meter_full) * 140), 20, 1561, (980 + funmet_y), 2, 2, 0xFF823D, 1)
            }
            else if (global.fun_meter >= (global.fun_meter_good * 0.25))
            {
                draw_sprite_ext(spr_hud_funmeter, 3, 1700, (860 + funmet_y), 2, 2, 0, c_white, 1)
                draw_set_color(0x5CD596)
                draw_sprite_ext(spr_hud_funmeter_bar, 0, 1700, (1000 + funmet_y), 2, 2, 0, c_white, 1)
                draw_sprite_part_ext(spr_hud_funmeter_bar2, 0, 0, 0, ((global.fun_meter / global.fun_meter_full) * 140), 20, 1561, (980 + funmet_y), 2, 2, 0x5CD596, 1)
            }
            else
            {
                draw_sprite_ext(spr_hud_funmeter, 4, 1700, (860 + funmet_y), 2, 2, 0, c_white, 1)
                draw_set_color(c_gray)
                draw_sprite_ext(spr_hud_funmeter_bar, 0, 1700, (1000 + funmet_y), 2, 2, 0, c_white, 1)
                draw_sprite_part_ext(spr_hud_funmeter_bar2, 0, 0, 0, ((global.fun_meter / global.fun_meter_full) * 140), 20, 1561, (980 + funmet_y), 2, 2, c_gray, 1)
            }
            draw_set_color(c_white)
            draw_set_alpha(1)
        }
        if (vis == 1)
        {
            if (global.combotimer > 0)
            {
                if (((tvy + 280) + combometer_y) > (tvy + 280) && global.combo > 0)
                {
                    if (global.combo >= 50)
                    {
                        draw_sprite_ext(spr_comboranks, 8, tvx, ((tvy + 280) + combometer_y), comborank_scale, comborank_scale, 0, c_white, 1)
                        draw_set_font(global.itfont)
                        draw_text(tvx, (((tvy + 280) + combometer_y) + 80), (string(combo_hot_x) + "X"))
                    }
                    else if (global.combo >= 40)
                        draw_sprite_ext(spr_comboranks, 7, tvx, ((tvy + 280) + combometer_y), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 35)
                        draw_sprite_ext(spr_comboranks, 6, tvx, ((tvy + 280) + combometer_y), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 30)
                        draw_sprite_ext(spr_comboranks, 5, tvx, ((tvy + 280) + combometer_y), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 25)
                        draw_sprite_ext(spr_comboranks, 4, tvx, ((tvy + 280) + combometer_y), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 20)
                        draw_sprite_ext(spr_comboranks, 3, tvx, ((tvy + 280) + combometer_y), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 15)
                        draw_sprite_ext(spr_comboranks, 2, tvx, ((tvy + 280) + combometer_y), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 10)
                        draw_sprite_ext(spr_comboranks, 1, tvx, ((tvy + 280) + combometer_y), comborank_scale, comborank_scale, 0, c_white, 1)
                    else
                        draw_sprite_ext(spr_comboranks, 0, tvx, ((tvy + 280) + combometer_y), comborank_scale, comborank_scale, 0, c_white, 1)
                }
                else if (global.combo > 0)
                {
                    if (global.combo >= 50)
                        draw_sprite_ext(spr_comboranks, 8, tvx, (tvy + 340), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 40)
                        draw_sprite_ext(spr_comboranks, 7, tvx, (tvy + 340), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 35)
                        draw_sprite_ext(spr_comboranks, 6, tvx, (tvy + 340), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 30)
                        draw_sprite_ext(spr_comboranks, 5, tvx, (tvy + 340), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 25)
                        draw_sprite_ext(spr_comboranks, 4, tvx, (tvy + 340), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 20)
                        draw_sprite_ext(spr_comboranks, 3, tvx, (tvy + 340), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 15)
                        draw_sprite_ext(spr_comboranks, 2, tvx, (tvy + 340), comborank_scale, comborank_scale, 0, c_white, 1)
                    else if (global.combo >= 10)
                        draw_sprite_ext(spr_comboranks, 1, tvx, (tvy + 340), comborank_scale, comborank_scale, 0, c_white, 1)
                    else
                        draw_sprite_ext(spr_comboranks, 0, tvx, (tvy + 340), comborank_scale, comborank_scale, 0, c_white, 1)
                }
            }
            if (combometer_y > -450)
            {
                draw_set_halign(fa_right)
                draw_set_font(global.combobar_font)
                draw_sprite_ext(spr_tv_combobar, 0, tvx, ((tvy + 160) + combometer_y), 2, 2, 0, c_white, 1)
                draw_text_transformed((tvx - 110), ((tvy + 160) + combometer_y), ("X" + string(global.combo)), 2, 2, 0)
                draw_sprite_part_ext(spr_tv_combobar_bar, 0, 0, 0, (global.combotimer / 2), 80, (tvx - 150), ((tvy + 80) + combometer_y), 2, 2, c_white, 1)
                draw_set_halign(fa_center)
            }
            if (rmg_x > (-((string_length(rmg_txt) * 25))))
            {
                rmg_active = 1
                draw_sprite_ext(rmg_spr, rmg_img, 960, 540, 2, 2, 0, c_white, timeropac)
                if (rmg_spr == spr_radiomessage && rmg_bubble == 1)
                {
                    if (!surface_exists(rmg_surface))
                        rmg_surface = surface_create(928, 128)
                    surface_set_target(rmg_surface)
                    draw_set_color(c_white)
                    draw_rectangle(0, 0, 944, 100, false)
                    draw_set_halign(fa_left)
                    draw_set_color(c_black)
                    draw_set_font(fnt_normal)
                    draw_text_transformed(rmg_x, 50, rmg_txt, 2, 2, 0)
                    rmg_x -= 8
                    surface_reset_target()
                    draw_surface(rmg_surface, 512, 110)
                }
                draw_set_color(c_white)
                draw_set_halign(fa_center)
            }
            else if (rmg_active == 1)
            {
                rmg_spr = spr_radiomessage_end
                draw_set_color(c_black)
                draw_sprite_ext(rmg_spr, rmg_img, 960, 540, 2, 2, 0, c_white, 1)
                draw_set_color(c_white)
            }
            if (global.level == "train")
            {
                if (global.traintimer_sec <= 15 && global.traintimer_min == 0)
                {
                    if (global.no_tvtalk_t30s == 0)
                    {
                        with (instance_create_depth(obj_player.x, obj_player.y, 1, obj_tvtrigger))
                        {
                            txt = "GOTTA MOVE UP INTERN!!! WE WILL LOSE INSTANTLY IF THE TIMER HITS ZERO!!"
                            emo = "shock"
                        }
                        global.no_tvtalk_t30s = 1
                    }
                }
            }
            if (global.escape == 1)
            {
                draw_set_font(global.itfont)
                if (global.laps > 0)
                {
                    draw_sprite_ext(spr_hud_lapflag, 0, tv2x, (tv2y + 220), 2, 2, 0, c_white, 1)
                    draw_text_transformed(tv2x, (tv2y + 220), (string(global.laps) + " LAPS"), 2, 2, 0)
                }
                if (global.exittimer_sec <= 30 && global.exittimer_min == 0)
                {
                    if (global.no_tvtalk_30s == 0)
                    {
                        with (instance_create_depth(obj_player.x, obj_player.y, 1, obj_tvtrigger))
                        {
                            txt = choose("UM PHIL I THINK YOU'RE A BIT LOW ON TIME-", "LOOK AT THE TIME INTERN", "WE'RE NOT MAKING THIS", "THERE'S ONLY 30 SECONDS LEFT!", "HELLO?? I THINK WE'RE A BIT SLOW", "MOVE UP! MOVE UPPP!")
                            emo = "shock"
                        }
                        global.no_tvtalk_30s = 1
                    }
                    draw_set_color(c_red)
                }
                if (global.exittimer_sec == 0 && global.exittimer_min == 0)
                {
                    if (global.no_tvtalk_0s == 0)
                    {
                        with (instance_create_depth(obj_player.x, obj_player.y, 1, obj_tvtrigger))
                        {
                            txt = choose("OH NO", "Well, here we go again", "We are dead.", "He's coming!!", "Ugh, HIM again.", "The evil burger is back!", "IT IS OUR LAST CHANCE!", "HE IS GONNA EAT US!!!", "NOT AGAIN!", "Nope! Nope! Nope!")
                            emo = "shock"
                        }
                        global.no_tvtalk_0s = 1
                    }
                    if ((!instance_exists(obj_bigs)) && instance_exists(obj_player))
                        instance_create_depth(obj_player.x, obj_player.y, -1002, obj_bigs)
                    if (bigs_sound == 0)
                    {
                        audio_stop_sound(global.bigsvoice)
                        global.bigsvoice = audio_play_sound(choose(sfx_bigs_spawn_1, sfx_bigs_spawn_2, sfx_bigs_spawn_3, sfx_bigs_spawn_4, sfx_bigs_spawn_5, sfx_bigs_spawn_6, sfx_bigs_spawn_7, sfx_bigs_spawn_8), 1, false)
                        bigs_sound = 1
                    }
                    shk_x = irandom_range((-shk_strength), shk_strength)
                    shk_y = irandom_range((-shk_strength), shk_strength)
                }
                else
                {
                    shk_x = 0
                    shk_y = 0
                }
                if (escape_timer_scale_hold > 0)
                    escape_timer_scale_hold--
                else if (escape_timer_scale > 2)
                    escape_timer_scale -= 0.1
                if (escape_timer_scale > 2)
                    excape_timer_shk = irandom_range(-10, 10)
                else
                    excape_timer_shk = 0
                if (global.exittimer_sec == 0 && global.exittimer_min == 0)
                {
                    if (escape_timer_goaway < 300)
                        escape_timer_goaway += 2
                }
                else
                    escape_timer_goaway = 0
                if (global.insecret == 1)
                    draw_set_alpha(0.25)
                if (global.exittimer_sec > 9)
                    draw_text_transformed((960 + shk_x), (((920 + shk_y) - ((escape_timer_scale - 2) * 25)) + escape_timer_goaway), ((string(global.exittimer_min) + ":") + string(global.exittimer_sec)), escape_timer_scale, escape_timer_scale, excape_timer_shk)
                else
                    draw_text_transformed((960 + shk_x), (((920 + shk_y) - ((escape_timer_scale - 2) * 25)) + escape_timer_goaway), ((string(global.exittimer_min) + ":0") + string(global.exittimer_sec)), escape_timer_scale, escape_timer_scale, excape_timer_shk)
                draw_set_alpha(1)
                draw_set_color(c_white)
            }
            if (global.trainescape == 1)
            {
                draw_set_font(global.itfont)
                draw_set_color(c_red)
                if (global.traintimer_sec == 0 && global.traintimer_min == 0)
                    scr_gameover()
                if (global.traintimer_sec > 9)
                    draw_text_transformed((960 + shk_x), (970 + shk_y), ((string(global.traintimer_min) + ":") + string(global.traintimer_sec)), 2, 2, 0)
                else
                    draw_text_transformed((960 + shk_x), (970 + shk_y), ((string(global.traintimer_min) + ":0") + string(global.traintimer_sec)), 2, 2, 0)
                draw_set_alpha(1)
                draw_set_color(c_white)
            }
            draw_set_font(global.scorefont_new)
            draw_set_halign(fa_left)
            draw_sprite_part_ext(spr_microwave_heatmeter, 0, 0, 0, ((global.heat_meter - ((global.heat * 30) - 30)) * 7.4), 250, (tv2x - 220), ((16 + tv2yplus) + shk2_y), 2, 2, c_white, 1)
            draw_set_halign(fa_center)
            draw_sprite_ext(hm_spr, hm_img, (tv2x + shk2_x), ((tv2y + tv2yplus) + shk2_y), 2, 2, 0, c_white, tv2opac)
            draw_text_transformed((tv2x + shk2_x), ((tv2y + tv2yplus) + shk2_y), fakescore, 2, 2, 0)
            if (_viewscore > global.srank)
            {
                if (global.prankable == 1 && global.treasure == 1 && global.laps > 0 && global.secrets >= 3)
                {
                    if (hudrank != "p")
                    {
                        hudrank_scale = 2
                        hudrank = "p"
                    }
                    draw_sprite_ext(spr_hud_ranks, 0, (tv2x + 290), 96, (2 * hudrank_scale), (2 * hudrank_scale), 0, c_white, 1)
                }
                else
                {
                    if (hudrank != "s")
                    {
                        hudrank_scale = 2
                        hudrank = "s"
                    }
                    draw_sprite_ext(spr_hud_ranks, 1, (tv2x + 290), 96, (2 * hudrank_scale), (2 * hudrank_scale), 0, c_white, 1)
                }
            }
            else if (_viewscore > global.arank)
            {
                if (hudrank != "a")
                {
                    hudrank_scale = 2
                    hudrank = "a"
                }
                draw_sprite_ext(spr_hud_ranks, 2, (tv2x + 290), 96, (2 * hudrank_scale), (2 * hudrank_scale), 0, c_white, 1)
            }
            else if (_viewscore > global.brank)
            {
                if (hudrank != "b")
                {
                    hudrank_scale = 2
                    hudrank = "b"
                }
                draw_sprite_ext(spr_hud_ranks, 3, (tv2x + 290), 96, (2 * hudrank_scale), (2 * hudrank_scale), 0, c_white, 1)
            }
            else if (_viewscore > global.crank)
            {
                if (hudrank != "c")
                {
                    hudrank_scale = 2
                    hudrank = "c"
                }
                draw_sprite_ext(spr_hud_ranks, 4, (tv2x + 290), 96, (2 * hudrank_scale), (2 * hudrank_scale), 0, c_white, 1)
            }
            else
            {
                if (hudrank != "d")
                {
                    hudrank_scale = 2
                    hudrank = "d"
                }
                draw_sprite_ext(spr_hud_ranks, 5, (tv2x + 290), 96, (2 * hudrank_scale), (2 * hudrank_scale), 0, c_white, 1)
            }
            if (rmg_active == 1)
            {
                tv2spr = rmg2_spr
                if (prevstate != "radiomessage")
                {
                    tvnoise = 0
                    prevstate = "radiomessage"
                }
            }
            else if instance_exists(obj_player)
            {
                switch obj_player.state
                {
                    case "hurt":
                        tv_hurttime = 0
                        tv2spr = spr_tv_hurt
                        if (prevstate != obj_player.state)
                        {
                            tvnoise = 0
                            prevstate = obj_player.state
                        }
                        break
                    case "bomb":
                        tv2spr = spr_tv_bomb
                        if (prevstate != obj_player.state)
                        {
                            tvnoise = 0
                            prevstate = obj_player.state
                        }
                        break
                    case "keyget":
                        tv2spr = spr_tv_key
                        if (prevstate != obj_player.state)
                        {
                            tvnoise = 0
                            prevstate = obj_player.state
                        }
                        break
                    case "onfire":
                        tv2spr = spr_tv_onfire
                        if (prevstate != obj_player.state)
                        {
                            tvnoise = 0
                            prevstate = obj_player.state
                        }
                        break
                    case "knight":
                        tv2spr = spr_tv_knight
                        if (prevstate != obj_player.state)
                        {
                            tvnoise = 0
                            prevstate = obj_player.state
                        }
                        break
                    case "cheesed":
                        tv2spr = spr_tv_cheesed
                        if (prevstate != obj_player.state)
                        {
                            tvnoise = 0
                            prevstate = obj_player.state
                        }
                        break
                    case "snowball":
                        tv2spr = spr_tv_snowball
                        if (prevstate != obj_player.state)
                        {
                            tvnoise = 0
                            prevstate = obj_player.state
                        }
                        break
                    case "ghost":
                        tv2spr = spr_tv_ghost
                        if (prevstate != obj_player.state)
                        {
                            tvnoise = 0
                            prevstate = obj_player.state
                        }
                        break
                    case "sodaride":
                        tv2spr = spr_tv_sodaride
                        if (prevstate != obj_player.state)
                        {
                            tvnoise = 0
                            prevstate = obj_player.state
                        }
                        break
                    default:
                        if (tv_hurttime < 40)
                        {
                            tv2spr = spr_tv_hurt
                            if (prevstate != "hurt")
                            {
                                tvnoise = 0
                                prevstate = "hurt"
                            }
                        }
                        else if (global.escape == 1)
                        {
                            tv2spr = spr_tv_panic
                            if (prevstate != "normal")
                            {
                                tvnoise = 0
                                prevstate = "normal"
                            }
                        }
                        else if (tv_secretfound < 200)
                        {
                            tv2spr = spr_tv_secret
                            if (prevstate != "secret")
                            {
                                tvnoise = 0
                                prevstate = "secret"
                            }
                        }
                        else if (tv_scoreup < 200)
                        {
                            tv2spr = spr_tv_scoreup
                            if (prevstate != "scoreup")
                            {
                                tvnoise = 0
                                prevstate = "scoreup"
                            }
                        }
                        else if (global.mayogun == 1)
                        {
                            tv2spr = spr_tv_mayogun
                            if (prevstate != "mayogun")
                            {
                                tvnoise = 0
                                prevstate = "mayogun"
                            }
                        }
                        else
                        {
                            if (tv2spridle > 0)
                            {
                                tv2spr = spr_tv_idle
                                tv2spridle--
                            }
                            else if (tv2spr != spr_tv_idling1 && tv2spr != spr_tv_idling2)
                                tv2spr = choose(spr_tv_idling1, spr_tv_idling2)
                            if (prevstate != "normal")
                            {
                                tvnoise = 0
                                prevstate = "normal"
                            }
                        }
                        break
                }

            }
            else
                tv2spr = spr_tv_noise
            if (tvnoise < 4)
            {
                tvnoise++
                draw_sprite_ext(spr_tv_noise, tv2smg, tvx, (tvy + tvyplus), 2, 2, 0, c_white, tvopac)
            }
            else if (prevstate == "radiomessage")
                draw_sprite_ext(tv2spr, rmg2_img, tvx, (tvy + tvyplus), 2, 2, 0, c_white, tvopac)
            else if (global.level == "train" && global.traintimer_sec < 15 && global.traintimer_min == 0)
                draw_sprite_ext(spr_tv_tomatino_bombhold, tv2smg, tvx, (tvy + tvyplus), 2, 2, 0, c_white, tvopac)
            else
                draw_sprite_ext(tv2spr, tv2smg, tvx, (tvy + tvyplus), 2, 2, 0, c_white, tvopac)
            if (tv2smg < sprite_get_number(tv2spr))
                tv2smg += 0.3
            else
            {
                if (tv2spr == spr_tv_idling1 || tv2spr == spr_tv_idling2)
                    tv2spridle = irandom_range(30, 130)
                tv2smg = 0
            }
        }
        draw_set_font(global.itfont)
    }
    if instance_exists(obj_player)
    {
        if (obj_player.cutscene_choice == 1)
        {
            draw_set_color(0x99F3D1)
            switch obj_player.cutscene_choice_c
            {
                case 1:
                    draw_text_transformed(960, (1000 + (msg_y * 2)), "I NEED A TIP! >", 2, 2, 0)
                    break
                case 2:
                    draw_text_transformed(960, (1000 + (msg_y * 2)), "< MY STATISTICS! >", 2, 2, 0)
                    break
                case 3:
                    draw_text_transformed(960, (1000 + (msg_y * 2)), "< CAN I GET A HAT?", 2, 2, 0)
                    break
            }

            draw_set_color(c_white)
        }
        else if (msg_time < 180)
        {
            if (msg_xoff_cd > 0)
                msg_xoff_cd--
            else
            {
                if (msg_xoff == 1)
                    msg_xoff = 0
                else
                    msg_xoff = 1
                msg_xoff_cd = 2
            }
            msg_time++
            draw_text_transformed((960 + (msg_xoff * 2)), (1000 + (msg_y * 2)), msg_txt, 2, 2, 0)
        }
        else if (msg_y < 320)
        {
            if (msg_xoff_cd > 0)
                msg_xoff_cd--
            else
            {
                if (msg_xoff == 1)
                    msg_xoff = 0
                else
                    msg_xoff = 1
                msg_xoff_cd = 2
            }
            msg_y += 4
            draw_text_transformed((960 + (msg_xoff * 2)), (980 + msg_y), msg_txt, 2, 2, 0)
        }
    }
}
