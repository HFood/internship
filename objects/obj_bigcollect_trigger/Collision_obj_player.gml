if (created == 1 && (!(collision_point(x, y, obj_solid, 0, 1))) && other.state != "ghostcheckpoint")
{
    global.combotimer = global.combotimer_full
    global.score += 100
    scr_sound(sfx_bigcollect)
    with (obj_scorekeeper)
        tv_scoreup = 0
    with (instance_create_depth(x, y, -1, obj_textfloat))
        _score = 100
    with (instance_create_depth((480 - (obj_camera.x - x)), (270 - (obj_camera.y - y)), -1005, obj_scoredisappear))
        sprite_index = other.sprite_index
    instance_destroy()
}
