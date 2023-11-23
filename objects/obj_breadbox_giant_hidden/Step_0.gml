if (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player) || place_meeting(x, y, obj_playerfronthitbox))
{
    if (obj_player.spinning == 1 || obj_player.grabbing == 1 || obj_player.state == "crouchslide" || obj_player.state == "uppunch" || obj_player.state == "onfire")
        hp--
    else if ((obj_player.state == "tackle1" || obj_player.state == "tackle2" || obj_player.state == "walljump" || (obj_player.state == "cheesed" && obj_player.cheesed_state == "roll") || obj_player.state == "superjump_kick" || obj_player.state == "sodaride" || obj_player.state == "jetpack_run" || obj_player.state == "jetpack_dash" || obj_player.state == "tumble" || obj_player.state == "snowball") && ((obj_player.x < x && obj_player.image_xscale == 1) || (obj_player.x > x && obj_player.image_xscale == -1) || obj_player.state == "tumble"))
        hp--
}
if place_meeting(x, (y + 1), obj_player)
{
    if (obj_player.state != "uppunch")
        obj_player.vsp = 0
    hp--
}
if place_meeting(x, (y - 1), obj_player)
{
    if (obj_player.state == "bodyslam" || obj_player.state == "onfire")
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
