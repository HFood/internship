if (room == rm_hub)
    ds_list_delete(global.saveroom, id)
if (ds_list_find_index(global.saveroom, id) != -1)
{
    with (instance_create_depth(x, y, depth, obj_door))
    {
        sprite_index = spr_treasuredoor
        other.createdoor = id
        rm = other.rm
        targx = other.targx
        targy = other.targy
    }
    instance_destroy()
}
