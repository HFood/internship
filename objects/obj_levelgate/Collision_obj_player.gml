if (other.state == "normal" || other.state == "tackle1" || other.state == "tackle2" || other.state == "superjumpprep")
    scr_shortmessage(rmname)
if (other.key_up && other.grounded && other.crouch == 0 && other.spinning == 0 && other.grabbing == 0 && (other.state == "normal" || other.state == "tackle1" || other.state == "tackle2" || other.state == "superjumpprep"))
{
    audio_group_stop_all(1)
    global.combo = 0
    global.timer = 0
    global.score = 0
    global.arank = (global.srank / 2)
    global.brank = ((global.srank / 2) * 0.66)
    global.crank = ((global.srank / 2) * 0.33)
    oj = 1
    with (obj_player)
    {
        if (!(collision_rectangle((other.x - 64), (other.y - 12), (other.x + 64), (other.y + 12), obj_player, 0, 0)))
            x = other.x
        y = (other.y + 78)
        if instance_exists(tackle_particle)
            instance_destroy(tackle_particle)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        if audio_is_playing(roll_sfx)
            audio_stop_sound(roll_sfx)
        tack0 = 0
        tack1 = 0
        tack2 = 0
        doorexit_state = "exit"
        doornum = "A"
        door_id = other.id
        doorexit_shocked = 0
        door_rm = other.rm
        state = "entergate"
        if (other.rm == 3)
        {
            instance_create_depth(x, y, -10, obj_fade)
            other.oj = 0
            image_index = 27
        }
        else
            image_index = 0
    }
}
