if keyboard_check_pressed(global.key_grab)
{
    global.trainsfx = -4
    scr_transfo_msg_clear()
    audio_stop_all()
    ds_list_clear(global.saveroom)
    ds_list_clear(global.enemy_spawners)
    game_restart()
    with (instance_create_depth(x, y, -10, obj_fade))
    {
        alpha = 1
        yeah2 = 1
    }
    instance_destroy(obj_comborank)
    instance_destroy(obj_keybuddy)
    instance_destroy(obj_lunchy)
    instance_destroy(obj_tvtrigger)
    global.treasure = 0
    global.insecret = 0
    global.escape = 0
    global.trainescape = 0
    global.damage_milestone = 0
    global.kill_milestone = 0
    global.timer_min = 0
    global.timer_sec = 0
    global.timer_ms = 0
    global.score = 0
    global.combotimer = 0
    global.combo = 0
    global.secrets = 0
    global.key = 0
    global.lunchy = 0
    global.mayogun = 0
    global.laps = 0
    global.graffitis = 0
    global.fun_meter = 0
    global.fun_meter_visible = 0
    global.arena = 0
    global.arena_round = 0
    with (obj_camera)
        mach_x = 0
    with (obj_player)
        doornum = "NONE"
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
    scr_message("")
    scr_levelmusic()
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

    instance_destroy(obj_comborank)
    instance_destroy(obj_keybuddy)
    instance_destroy(obj_lunchy)
    instance_destroy(obj_tvtrigger)
    instance_destroy()
}
if (timer > 0)
    timer--
else
{
    global.trainsfx = -4
    scr_transfo_msg_clear()
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
    instance_destroy(obj_comborank)
    instance_destroy(obj_keybuddy)
    instance_destroy(obj_lunchy)
    instance_destroy(obj_tvtrigger)
    global.treasure = 0
    global.insecret = 0
    global.escape = 0
    global.trainescape = 0
    global.damage_milestone = 0
    global.kill_milestone = 0
    global.timer_min = 0
    global.timer_sec = 0
    global.timer_ms = 0
    global.score = 0
    global.combotimer = 0
    global.combo = 0
    global.secrets = 0
    global.key = 0
    global.lunchy = 0
    global.mayogun = 0
    global.laps = 0
    global.graffitis = 0
    global.fun_meter = 0
    global.fun_meter_visible = 0
    global.arena = 0
    global.arena_round = 0
    with (obj_camera)
        mach_x = 0
    with (obj_player)
        doornum = "NONE"
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
    scr_message("")
    global.level = "hub"
    obj_scorekeeper.tutorial_tvshow = 0
}
if place_meeting(x, (y + 1), obj_solid)
{
    if (died == 0)
    {
        with (instance_create_depth(obj_player.x, obj_player.y, 1, obj_debris))
        {
            particles = 1
            hsp = -4
            vsp = -5
            sprite_index = obj_player.spr_player_dead
        }
        instance_destroy(obj_player)
        died = 1
    }
    vsp = 0
}
y += vsp
if (vsp != 0)
    sprite_index = spr_timesup_fall
else if (land == 0)
    sprite_index = spr_timesup_land
else
    sprite_index = spr_timesup
