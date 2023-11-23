if (trigger_id != noone && (!instance_exists(trigger_id)) && spawned == 0)
{
    with (instance_create_depth(x, y, -1, obj_effecttemporary))
        sprite_index = spr_effect11
    with (instance_create_depth(x, (y - 16), 2, obj))
    {
        image_xscale = other.image_xscale
        stuntime = 60
        stun_delay = 8
    }
    spawned = 1
}
else if (collision_rectangle((x - 512), (y - 320), (x + 512), (y + 320), obj_player, 0, 1) && global.escape == 1 && spawned == 0)
{
    with (instance_create_depth(x, y, -1, obj_effecttemporary))
        sprite_index = spr_effect11
    with (instance_create_depth(x, (y - 16), 2, obj))
    {
        image_xscale = other.image_xscale
        state = "stun"
        stuntime = 20
        stun_delay = 8
    }
    spawned = 1
}
if (spawned == 1 && (!instance_exists(obj)))
{
    ds_list_add(global.enemy_spawners, id)
    instance_destroy()
}
