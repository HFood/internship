function scr_gameover() //gml_Script_scr_gameover
{
    with (obj_game)
        pause = -1
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
    global.insecret = 0
    global.heat = 1
    global.heat_meter = 0
    global.escape = 0
    global.trainescape = 0
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
    global.trainsfx = -4
    audio_stop_all()
    audio_stop_sound(global.bigsvoice)
    scr_transfo_msg_clear()
    room_goto(rm_timesup)
    instance_destroy(obj_player)
    with (instance_create_depth(480, 270, 1, obj_player))
        state = "timesup"
    if (object_index == obj_bigs)
        instance_destroy()
}

