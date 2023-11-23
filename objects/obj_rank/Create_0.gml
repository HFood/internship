instance_destroy(obj_debris)
startdone = 0
secrets_done = 0
phase = 1
cur_secret = 0
cur_treas = 0
cur_dmg = 0
cur_kills = 0
supre_wind = 120
pre_wind = 20
wind = 0
faketime = 0
faketimer_min = 0
faketimer_sec = 0
fakescore = 0
nowrank = 0
rankingdone = 0
image_speed = 0
rank_x = 640
voicerank_time = 40
voicerank_done = 0
after_prank = 0
prankdone = 0
paper_X = 960
x = (480 - (obj_camera.x - obj_player.x))
y = (270 - (obj_camera.y - obj_player.y))
instance_destroy(obj_fade)
audio_stop_sound(sfx_tick)
audio_stop_sound(sfx_ding)
audio_stop_sound(sfx_cashreg)
if (global.gonnaprank == 1)
{
    sprite_index = spr_rank_intern_prank
    global.gonnaprank = 0
}
