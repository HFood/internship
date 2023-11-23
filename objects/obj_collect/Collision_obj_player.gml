if ((!(collision_point(x, y, obj_solid, 0, 1))) && other.state != "ghostcheckpoint")
{
    global.combotimer += (global.combotimer_full / 6)
    global.score += 10
    scr_1sound(sfx_munch)
    audio_sound_pitch(sfx_munch, random_range(0.95, 1.05))
    with (instance_create_depth(x, y, -1, obj_textfloat))
        _score = 10
    with (instance_create_depth((480 - (obj_camera.x - x)), (270 - (obj_camera.y - y)), -1005, obj_scoredisappear))
        sprite_index = other.sprite_index
    instance_destroy()
}
