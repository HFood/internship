if ((!(collision_point(x, y, obj_solid, 0, 1))) && other.state != "ghostcheckpoint" && global.trainescape == 1)
{
    global.combotimer = global.combotimer_full
    for (var i = 0; i < 20; i++)
    {
        if (i > 0)
        {
            if (global.traintimer_sec < 59)
                global.traintimer_sec++
            else if (global.traintimer_min < 59)
            {
                global.traintimer_min++
                global.traintimer_sec = 0
            }
            else
            {
                global.traintimer_min = 0
                global.traintimer_sec = 0
            }
        }
    }
    scr_sound(sfx_clock)
    with (instance_create_depth(x, y, -1, obj_textfloat))
        _score = "+0:20"
    with (instance_create_depth((480 - (obj_camera.x - x)), (270 - (obj_camera.y - y)), -1005, obj_scoredisappear))
        sprite_index = other.sprite_index
    instance_destroy()
}
