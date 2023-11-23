if ((!(collision_point(x, y, obj_solid, 0, 1))) && other.state != "ghostcheckpoint")
{
    global.combotimer = global.combotimer_full
    global.score += 1500
    global.treasure = 1
    scr_sound(sfx_giantcollect)
    scr_message("YOU GOT THE TREASURE!")
    with (instance_create_depth(x, y, -1, obj_textfloat))
        _score = 1500
    with (instance_create_depth((480 - (obj_camera.x - x)), (270 - (obj_camera.y - y)), -1005, obj_scoredisappear))
        sprite_index = other.sprite_index
    instance_destroy()
}
