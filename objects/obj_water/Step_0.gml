if place_meeting(x, y, obj_player)
{
    if (colpl == 0)
    {
        scr_sound(sfx_water_enter)
        with (instance_create_depth(obj_player.x, (bbox_top - 45), 20, obj_effecttemporary))
            sprite_index = spr_effect27
        scr_water_drops()
        colpl = 1
    }
}
else
{
    if (colpl == 1)
    {
        with (instance_create_depth(obj_player.x, (bbox_top - 45), 20, obj_effecttemporary))
            sprite_index = spr_effect29
        audio_stop_sound(bubsnd)
        wavetimer = 20
        bubsndtimer = 160
        scr_sound(sfx_water_ext)
    }
    colpl = 0
}
if (colpl == 1)
{
    if (obj_player.inwater_shallow == 0)
    {
        if (bubsndtimer > 0)
            bubsndtimer--
        else
        {
            bubsnd = audio_play_sound(choose(sfx_underwater1, sfx_underwater2, sfx_underwater3, sfx_underwater4), 1, false)
            bubsndtimer = 160
        }
    }
    if ((obj_player.bbox_top - 24) < bbox_top && obj_player.hsp != 0)
    {
        if (wavetimer > 0)
            wavetimer--
        else
        {
            with (instance_create_depth(obj_player.x, bbox_top, 20, obj_effecttemporary))
                sprite_index = spr_effect30
            wavetimer = 40
        }
    }
}
