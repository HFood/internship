if (place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player) || place_meeting(x, (y - 1), obj_player) || place_meeting(x, (y + 1), obj_player))
    hp--
if (hp < 1)
{
    with (instance_create_depth(x, y, -1, obj_effecttemporary))
    {
        image_xscale = 2
        image_yscale = 2
        sprite_index = spr_effect11
        image_blend = 0xB3E4EF
    }
    audio_stop_sound(sfx_breakblock1)
    audio_stop_sound(sfx_breakblock2)
    scr_sound(choose(sfx_breakblock1, sfx_breakblock2))
    scr_destroyable_debriscreate()
    instance_destroy()
}
