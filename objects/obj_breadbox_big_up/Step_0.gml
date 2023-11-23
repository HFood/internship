if place_meeting(x, (y - 1), obj_player)
{
    if (obj_player.state == "bodyslam" || obj_player.state == "jetpack_dash" || obj_player.state == "onfire")
        hp--
    if (obj_player.state == "onfire")
        obj_player.vsp = -6
}
if (hp < 1)
{
    audio_stop_sound(sfx_breakblock1)
    audio_stop_sound(sfx_breakblock2)
    scr_sound(choose(sfx_breakblock1, sfx_breakblock2))
    scr_destroyable_debriscreate()
    instance_destroy()
}
if (object_index == obj_breadbox_big_hidden_up)
    visible = global.showcollisions
