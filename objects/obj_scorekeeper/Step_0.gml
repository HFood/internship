ini_open(global.savedata_ini)
tutorial_done = ini_read_real("story", "tutorial_done", 0)
ini_close()
if (global.level == "circus")
{
    if (global.fun_meter_visible == 1 && funmet_y > 0)
        funmet_y -= 3
    else if (global.fun_meter_visible == 0 && funmet_y < 380)
        funmet_y += 3
}
if (global.character == "backy")
{
    if (global.jetpack_fuel < 5)
    {
        if (fuelup < 130)
            fuelup++
        else
        {
            global.jetpack_fuel++
            fuelup = 0
        }
    }
}
if (global.combo > 0)
{
    if (combometer_started == 0)
    {
        combometer_vsp = 30
        combometer_started = 1
    }
    if (combometer_vsp > 0)
    {
        combometer_y += combometer_vsp
        combometer_vsp -= 0.5
    }
    else
        combometer_y = 50
}
else
{
    if (combometer_started == 1)
    {
        combometer_vsp = -30
        combometer_started = 0
    }
    if (combometer_vsp < 0)
    {
        combometer_y += combometer_vsp
        combometer_vsp += 0.5
    }
    else
        combometer_y = -450
}
if (tv_hurttime < 40)
    tv_hurttime++
if (tv_scoreup < 200)
    tv_scoreup++
if (tv_secretfound < 200)
    tv_secretfound++
if (room != rm_timesup)
{
    if (global.combotimer > 0)
    {
        if (current_comborank > 7)
        {
            if (global.combo >= okasy_combo && current_comborank < okasy_comborank)
            {
                current_comborank++
                combo_hot_x++
                okasy_comborank++
                okasy_combo += 1
                if ((global.combo % 10) == 0)
                    comborank_scale = 4.5
            }
        }
        else if (global.combo >= 50 && current_comborank < 8)
        {
            current_comborank++
            combo_hot_x++
            okasy_comborank = 9
            okasy_combo = 51
            comborank_scale = 4.5
        }
        else if (global.combo >= 40 && current_comborank < 7)
        {
            current_comborank++
            comborank_scale = 4.5
        }
        else if (global.combo >= 35 && current_comborank < 6)
        {
            current_comborank++
            comborank_scale = 4.5
        }
        else if (global.combo >= 30 && current_comborank < 5)
        {
            current_comborank++
            comborank_scale = 4.5
        }
        else if (global.combo >= 25 && current_comborank < 4)
        {
            current_comborank++
            comborank_scale = 4.5
        }
        else if (global.combo >= 20 && current_comborank < 3)
        {
            current_comborank++
            comborank_scale = 4.5
        }
        else if (global.combo >= 15 && current_comborank < 2)
        {
            current_comborank++
            comborank_scale = 4.5
        }
        else if (global.combo >= 10 && current_comborank < 1)
        {
            current_comborank++
            comborank_scale = 4.5
        }
        if instance_exists(obj_player)
        {
            if (obj_player.state != "enterdoor" && obj_player.state != "doorkey_enter" && obj_player.state != "doorexit" && obj_player.state != "keyget" && obj_player.state != "enterportal" && obj_player.state != "outterportal" && obj_player.state != "ghostcheckpoint")
                global.combotimer -= 0.75
        }
    }
    else if (global.combo != 0)
    {
        scr_1sound(sfx_cashreg)
        instance_destroy(obj_comborank)
        current_comborank = 0
        okasy_combo = 0
        okasy_comborank = 0
        if (global.combo > 1)
        {
            fakescore = global.score
            global.score += (10 + ((global.combo - 1) * 20))
            comboscoreplus = (10 + ((global.combo - 1) * 20))
            csp_spd = round((comboscoreplus / 100))
            csp_spd = max(csp_spd, 1)
            cbs_first = comboscoreplus
        }
        else
        {
            global.score += 10
            comboscoreplus = 10
            csp_spd = round((comboscoreplus / 100))
            csp_spd = max(csp_spd, 1)
        }
        with (instance_create_depth(x, y, -1, obj_comborank))
        {
            if (global.combo >= 50)
            {
                scr_sound(sfx_phil_comboend_hot)
                hotx = other.combo_hot_x
                sprite_index = spr_comboranks
                image_index = 8
            }
            else if (global.combo >= 40)
            {
                scr_sound(sfx_phil_comboend_wild)
                sprite_index = spr_comboranks
                image_index = 7
            }
            else if (global.combo >= 35)
            {
                scr_sound(sfx_phil_comboend_glorious)
                sprite_index = spr_comboranks
                image_index = 6
            }
            else if (global.combo >= 30)
            {
                scr_sound(sfx_phil_comboend_splendid)
                sprite_index = spr_comboranks
                image_index = 5
            }
            else if (global.combo >= 25)
            {
                scr_sound(sfx_phil_comboend_great)
                sprite_index = spr_comboranks
                image_index = 4
            }
            else if (global.combo >= 20)
            {
                scr_sound(sfx_phil_comboend_nice)
                sprite_index = spr_comboranks
                image_index = 3
            }
            else if (global.combo >= 15)
            {
                scr_sound(sfx_phil_comboend_average)
                sprite_index = spr_comboranks
                image_index = 2
            }
            else if (global.combo >= 10)
            {
                scr_sound(sfx_phil_comboend_mellow)
                sprite_index = spr_comboranks
                image_index = 1
            }
            else
            {
                scr_sound(sfx_phil_comboend_ok)
                sprite_index = spr_comboranks
                image_index = 0
            }
        }
        if (global.stylin_score < 10)
            global.stylin_score = 0
        if (room != rm_rank)
            global.prankable = 0
        combo_hot_x = 0
        global.combo = 0
    }
    if (comboscoreplus > 0)
    {
        if (room != rm_rank)
            scr_1sound(sfx_tick)
        fakescore += csp_spd
        comboscoreplus -= csp_spd
        shk2_x = irandom_range((-shk2_strength), shk2_strength)
        shk2_y = irandom_range((-shk2_strength), shk2_strength)
        if (comboscoreplus <= 0)
        {
            comboscoreplus = 0
            if (room != rm_rank)
                scr_1sound(sfx_ding)
            shk2_x = 0
            shk2_y = 0
        }
    }
    else
        fakescore = global.score
}
switch global.character
{
    case "intern":
        spr_tv_idle = spr_tv_player_idle
        spr_tv_idling1 = spr_tv_player_idling1
        spr_tv_idling2 = spr_tv_player_idling2
        spr_tv_hurt = spr_tv_player_disgust
        spr_tv_bomb = spr_tv_player_bomb
        spr_tv_angry = spr_tv_player_angry1
        spr_tv_key = spr_tv_player_key
        spr_tv_knight = spr_tv_player_knight
        spr_tv_snowball = spr_tv_player_snowball
        spr_tv_ghost = spr_tv_player_ghost
        spr_tv_cheesed = spr_tv_player_cheesed
        spr_tv_panic = spr_tv_player_panic
        spr_tv_secret = spr_tv_player_secret
        spr_tv_scoreup = spr_tv_player_scoreup
        spr_tv_sodaride = spr_tv_player_sodaride
        spr_tv_mayogun = spr_tv_player_mayogun
        spr_tv_onfire = spr_tv_player_onfire
        break
    case "backy":
        spr_tv_idle = spr_tv_player2_idle
        spr_tv_idling1 = spr_tv_player2_idling1
        spr_tv_idling2 = spr_tv_player2_idling2
        spr_tv_hurt = spr_tv_player2_hurt
        spr_tv_bomb = spr_tv_player2_bomb
        spr_tv_angry = spr_tv_player2_angry1
        spr_tv_key = spr_tv_player2_key
        spr_tv_knight = spr_tv_player_knight
        spr_tv_snowball = spr_tv_player2_snowball
        spr_tv_ghost = spr_tv_player_ghost
        spr_tv_cheesed = spr_tv_player_cheesed
        spr_tv_panic = spr_tv_player2_panic
        spr_tv_secret = spr_tv_player_secret
        spr_tv_scoreup = spr_tv_player2_scoreup
        spr_tv_sodaride = spr_tv_player2_sodaride
        spr_tv_mayogun = spr_tv_player_mayogun
        spr_tv_onfire = spr_tv_player_onfire
        break
    case "chiknnuggit":
        spr_tv_idle = spr_tv_chiknnuggit_idle
        spr_tv_idling1 = spr_tv_chiknnuggit_idle
        spr_tv_idling2 = spr_tv_chiknnuggit_idle
        spr_tv_hurt = spr_tv_chiknnuggit_idle
        spr_tv_bomb = spr_tv_chiknnuggit_idle
        spr_tv_angry = spr_tv_chiknnuggit_idle
        spr_tv_key = spr_tv_chiknnuggit_idle
        spr_tv_knight = spr_tv_chiknnuggit_idle
        spr_tv_snowball = spr_tv_chiknnuggit_idle
        spr_tv_ghost = spr_tv_chiknnuggit_idle
        spr_tv_cheesed = spr_tv_chiknnuggit_idle
        spr_tv_panic = spr_tv_chiknnuggit_idle
        spr_tv_secret = spr_tv_player_secret
        spr_tv_scoreup = spr_tv_chiknnuggit_idle
        spr_tv_sodaride = spr_tv_chiknnuggit_idle
        spr_tv_mayogun = spr_tv_player_mayogun
        spr_tv_onfire = spr_tv_player_onfire
        break
}

hm_spr = asset_get_index(("spr_microwave_heat" + string(global.heat)))
if (global.heat_meter > 0)
{
    switch global.heat
    {
        case 1:
            global.heat_meter -= 0.0125
            break
        case 2:
            global.heat_meter -= 0.014
            break
        case 3:
            global.heat_meter -= 0.016
            break
    }

    if ((global.heat_meter > 30 && global.heat < 2) || (global.heat_meter > 60 && global.heat < 3))
        global.heat++
    if ((global.heat_meter < 30 && global.heat > 1) || (global.heat_meter < 60 && global.heat > 2))
        global.heat--
}
if (hudrank_scale > 1)
    hudrank_scale -= 0.08
