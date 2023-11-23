depth = -20
global.grv = 0.5
global.itfont = font_add_sprite_ext(spr_itfont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.,:'?!№-%()+*/><~][", 0, 0)
global.itfont_numbersmall = font_add_sprite_ext(spr_itfont_small, "1234567890-.:", 0, 0)
global.scorefont = font_add_sprite_ext(spr_scorepaper_font, "1234567890.,:-%", 0, 0)
global.scorefont_new = font_add_sprite_ext(spr_microwave_font, "1234567890-", 0, 0)
global.combofont = font_add_sprite_ext(spr_tv_combofont, "1234567890-.X", 0, 0)
global.combobar_font = font_add_sprite_ext(spr_tv_combobar_font, "1234567890X", 0, -5)
global.pausefont = font_add_sprite_ext(spr_pausemenu_font, "0123456789-.", 0, -18)
global.rankpaperfont = font_add_sprite_ext(spr_rank_paper_font, "0123456789:-.%/", 0, -8)
global.score = 0
global.score_total = 0
global.secrets_total = 0
global.levels_done = 0
global.secrets = 0
global.srank = 0
global.arank = (global.srank / 2)
global.brank = ((global.srank / 2) * 0.66)
global.crank = ((global.srank / 2) * 0.33)
global.prankable = 1
global.gonnaprank = 0
global.escape = 0
global.trainescape = 0
global.damage_milestone = 0
global.kill_milestone = 0
global.key = 0
global.lunchy = 0
global.mayogun = 0
global.character = "intern"
global.showcollisions = 0
global.saveroom = ds_list_create()
global.enemy_spawners = ds_list_create()
global.level = "none"
global.laps = 0
global.heat = 1
global.heat_meter = 0
global.palette = 491
global.paletteselect = 1
global.save = 1
global.savedata_ini = "internship_data1.ini"
global.graffitis = 0
global.fun_meter = 0
global.fun_meter_good = 0
global.fun_meter_full = 0
global.fun_meter_visible = 0
global.developer_mode = 1
global.arena = 0
global.arena_round = 0
global.silhouette_mode = 0
global.coop = 0
global.camera_smooth = 0
global.camera_smooth_strength = 0.25
global.exittimer_ms = 0
global.exittimer_sec = 0
global.exittimer_min = 0
global.traintimer_ms = 0
global.traintimer_sec = 0
global.traintimer_min = 0
global.timer_ms = 0
global.timer_sec = 0
global.timer_min = 0
global.music = -4
global.bigsvoice = -4
global.coin_list = ds_list_create()
scr_random()
ini_open(global.savedata_ini)
ini_write_real("srank", "crateburg", 17200)
ini_write_real("srank", "rooftop", 10000)
ini_write_real("srank", "ancient", 14500)
ini_write_real("srank", "cave", 13000)
ini_write_real("srank", "resort", 22000)
ini_write_real("srank", "urban", 10000)
ini_write_real("srank", "freezer", 21000)
ini_write_real("srank", "circus", 24000)
ini_write_real("srank", "train", 13000)
ini_write_real("srank", "ship", 10000)
if (ini_read_real("score", "rooftop", 0) != 0 && ini_read_real("score", "ancient", 0) != 0 && ini_read_real("score", "cave", 0) != 0)
    global.galleryopen = 1
else
    global.galleryopen = 0
ini_write_real("maxsecrets", "crateburg", 3)
ini_write_real("maxsecrets", "rooftop", 3)
ini_write_real("maxsecrets", "ancient", 3)
ini_write_real("maxsecrets", "cave", 3)
ini_write_real("maxsecrets", "resort", 3)
ini_write_real("maxsecrets", "urban", 3)
global.coins = ini_read_real("story", "coins", 0)
global.tutorial_done = 1
global.backyintro_done = 1
global.boss1_done = 1
global.boss2_done = 1
global.boss3_done = 1
global.boss4_done = 1
global.boss5_done = 1
global.cash = ini_read_real("story", "cash", 0)
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
global.jetpack_fuel = 5
pause = -1
pausefade = -4
pausemu = -4
crackcd = 0
tomatocd = 0
global.no_cheesed = 0
global.no_sodaride = 0
global.no_snowball = 0
global.no_onfire = 0
global.no_tvtalk_30s = 0
global.no_tvtalk_0s = 0
global.no_tvtalk_t30s = 0
escape_red = 0
escape_red_spd = 200
escape_red_turn = 1
escape_scoremin = 0
pausetablet_y = -1080
rmname = "NAN"
rmname_time = 120
rmname_y = -320
global.trainsfx = -4
global.insecret = 0
global.lvl_exit_x = 0
global.lvl_exit_y = 0
global.lvl_exit_rm = -4
camera_set_view_border(view_camera[0], 32, 32)
debug_msg = array_create(5)
