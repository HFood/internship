if (place_meeting((x - 1), y, obj_player) || place_meeting((x + 1), y, obj_player) || place_meeting(x, (y + 1), obj_player))
{
    if (obj_player.state == "onfire")
        hp--
}
if place_meeting(x, (y - 1), obj_player)
{
    if (obj_player.state == "onfire")
    {
        hp--
        obj_player.vsp = -6
    }
}
if (hp < 1)
{
    scr_basheffect()
    global.combo++
    global.combotimer = global.combotimer_full
    scr_sound(sfx_hit)
    scr_destroyable_debriscreate()
    instance_destroy()
}
