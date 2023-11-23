if (yes == 1)
{
    obj_arena.arena_enem_left++
    with (instance_create_depth(x, y, -1, obj_effecttemporary))
        sprite_index = spr_effect11
    with (instance_create_depth(x, (y - 18), 2, obj))
    {
        arena_boy = 1
        image_xscale = other.image_xscale
        state = "stun"
        stuntime = 20
        stun_delay = 8
    }
    ds_list_add(global.enemy_spawners, id)
    instance_destroy()
}
