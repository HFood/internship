if (room == rm_hub)
    ds_list_delete(global.enemy_spawners, id)
if (ds_list_find_index(global.enemy_spawners, id) != -1)
    instance_destroy()
