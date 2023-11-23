if (place_meeting((x - 1), y, obj_player) || place_meeting((x + 1), y, obj_player) || place_meeting(x, y, obj_playerfronthitbox))
{
    if (obj_player.state == "snowball")
        hp--
}
if (hp < 1)
{
    audio_stop_sound(sfx_snowblock1)
    audio_stop_sound(sfx_snowblock2)
    audio_stop_sound(sfx_snowblock3)
    scr_sound(choose(sfx_snowblock1, sfx_snowblock2, sfx_snowblock3))
    var chs_debris = irandom_range(3, 5)
    repeat chs_debris
    {
        with (instance_create_depth(x, y, -1000, obj_debris))
        {
            sprite_index = spr_snowball_debris_big
            image_index = irandom_range(0, 3)
            hsp = irandom_range(-6, 6)
            vsp = irandom_range(-4, 1)
        }
    }
    chs_debris = irandom_range(4, 5)
    repeat chs_debris
    {
        with (instance_create_depth(x, y, -1000, obj_debris))
        {
            sprite_index = spr_snowball_debris
            image_index = irandom_range(0, 3)
            hsp = irandom_range(-6, 6)
            vsp = irandom_range(-4, 1)
        }
    }
    instance_destroy()
}
