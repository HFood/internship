if (instance_exists(obj_player) && state != "shake")
{
    if (obj_player.tauntduration > 0)
    {
        if (state != "taunt")
        {
            instance_create_depth(x, (y + 16), 10, obj_effecttemporary)
            sprite_index = spr_keybuddy_taunts
            image_index = irandom_range(0, (image_number - 1))
            state = "taunt"
        }
    }
    else
        state = "follow"
}
