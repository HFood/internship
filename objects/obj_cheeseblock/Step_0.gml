if (place_meeting((x - 1), y, obj_player) || place_meeting((x + 1), y, obj_player))
{
    if (obj_player.state == "cheesed" && obj_player.cheesed_state == "roll")
        hp--
}
if (hp < 1)
{
    scr_basheffect()
    audio_stop_sound(sfx_breakblock1)
    audio_stop_sound(sfx_breakblock2)
    scr_sound(choose(sfx_breakblock1, sfx_breakblock2))
    scr_destroyable_debriscreate()
    instance_destroy()
}
if (object_index == obj_cheeseblock_big_hidden || object_index == obj_cheeseblock_hidden || object_index == obj_cheeseblock_giant_hidden)
    visible = global.showcollisions
