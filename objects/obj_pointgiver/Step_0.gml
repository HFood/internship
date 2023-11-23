if (timer > 0)
    timer--
else if (points >= 25)
{
    global.combotimer += (global.combotimer_full / 6)
    global.score += 25
    points -= 25
    scr_1sound(sfx_munch)
    audio_sound_pitch(sfx_munch, random_range(0.95, 1.05))
    with (instance_create_depth(obj_player.x, obj_player.y, -1, obj_textfloat))
        _score = 25
    with (instance_create_depth((480 - (obj_camera.x - x)), (270 - (obj_camera.y - y)), -1005, obj_scoredisappear))
        sprite_index = choose(spr_collect2_1, spr_collect2_2, spr_collect2_3, spr_collect2_4, spr_collect2_5, spr_collect2_6)
    timer = 2
}
else
{
    global.combotimer += (global.combotimer_full / 6)
    global.score += points
    scr_1sound(sfx_munch)
    audio_sound_pitch(sfx_munch, random_range(0.95, 1.05))
    with (instance_create_depth(obj_player.x, obj_player.y, -1, obj_textfloat))
        _score = other.points
    with (instance_create_depth((480 - (obj_camera.x - x)), (270 - (obj_camera.y - y)), -1005, obj_scoredisappear))
        sprite_index = choose(spr_collect2_1, spr_collect2_2, spr_collect2_3, spr_collect2_4, spr_collect2_5, spr_collect2_6)
    instance_destroy()
}
