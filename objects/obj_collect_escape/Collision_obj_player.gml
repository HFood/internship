if (created == 1 && (!(collision_point(x, y, obj_solid, 0, 1))) && other.state != "ghostcheckpoint")
{
    global.combotimer += (global.combotimer_full / 6)
    global.score += 10
    audio_stop_sound(sfx_collectescape1)
    audio_stop_sound(sfx_collectescape2)
    var _snd = audio_play_sound(choose(sfx_collectescape1, sfx_collectescape2), 1, false)
    audio_sound_pitch(_snd, random_range(0.9, 1.1))
    with (instance_create_depth(x, y, -1, obj_textfloat))
        _score = 10
    with (instance_create_depth((480 - (obj_camera.x - x)), (270 - (obj_camera.y - y)), -1005, obj_scoredisappear))
        sprite_index = other.sprite_index
    instance_destroy()
}
