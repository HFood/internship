if place_meeting(x, (y - 1), obj_player)
{
    if (obj_player.state == "bodyslam" && obj_player.bodyslam_serious == 1)
    {
        grounded = 1
        hp--
    }
}
if (place_meeting((x - 1), y, obj_player) || place_meeting((x + 1), y, obj_player))
{
    if ((obj_player.state == "tackle2" || obj_player.state == "sodaride" || obj_player.state == "jetpack_run" || obj_player.state == "jetpack_dash") && ((obj_player.x < x && obj_player.image_xscale == 1) || (obj_player.x > x && obj_player.image_xscale == -1) || (obj_player.state == "fishride" && abs(onfire_spd) > 5)))
        hp--
}
if (hp < 1)
{
    with (obj_camera)
        shk_strength += 8
    scr_basheffect()
    audio_stop_sound(sfx_metalbreak)
    repeat (2)
        scr_sound(sfx_metalbreak)
    scr_destroyable_debriscreate()
    instance_destroy()
}
if (object_index == obj_metalbox_hidden || object_index == obj_metalbox_giant_hidden)
    visible = global.showcollisions
