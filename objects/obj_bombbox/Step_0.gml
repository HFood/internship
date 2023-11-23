if (hp < 1)
{
    scr_basheffect()
    audio_stop_sound(sfx_breakblock1)
    audio_stop_sound(sfx_breakblock2)
    scr_sound(choose(sfx_breakblock1, sfx_breakblock2))
    scr_destroyable_debriscreate()
    instance_destroy()
}
if (object_index == obj_bombbox_hidden)
    visible = global.showcollisions
