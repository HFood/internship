if (room == rm_rank)
    ds_list_delete(global.saveroom, id)
if (ds_list_find_index(global.saveroom, id) != -1)
    instance_destroy()
