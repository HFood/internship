if (room == rm_hub)
    ds_list_delete(global.saveroom, id)
if (ds_list_find_index(global.saveroom, id) != -1)
    itsokay = 1
