if (room == rm_hub)
    ds_list_delete(global.saveroom, id)
if (ds_list_find_index(global.saveroom, id) != -1)
{
    var lay_id = layer_get_id("Tiles_1")
    var map_id = layer_tilemap_get_id(lay_id)
    var data1 = tilemap_get_at_pixel(map_id, (x - 17), (y - 17))
    var data2 = tilemap_get_at_pixel(map_id, x, (y - 17))
    var data3 = tilemap_get_at_pixel(map_id, (x + 17), (y - 17))
    var data4 = tilemap_get_at_pixel(map_id, (x - 17), y)
    var data5 = tilemap_get_at_pixel(map_id, x, y)
    var data6 = tilemap_get_at_pixel(map_id, (x + 17), y)
    var data7 = tilemap_get_at_pixel(map_id, (x - 17), (y + 17))
    var data8 = tilemap_get_at_pixel(map_id, (x - 17), (y + 17))
    var data9 = tilemap_get_at_pixel(map_id, (x + 17), (y + 17))
    data1 = tile_set_empty(data1)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    data5 = tile_set_empty(data5)
    data6 = tile_set_empty(data6)
    data7 = tile_set_empty(data7)
    data8 = tile_set_empty(data8)
    data9 = tile_set_empty(data9)
    tilemap_set_at_pixel(map_id, data1, (x - 17), (y - 17))
    tilemap_set_at_pixel(map_id, data2, x, (y - 17))
    tilemap_set_at_pixel(map_id, data3, (x + 17), (y - 17))
    tilemap_set_at_pixel(map_id, data4, (x - 17), y)
    tilemap_set_at_pixel(map_id, data5, x, y)
    tilemap_set_at_pixel(map_id, data6, (x + 17), y)
    tilemap_set_at_pixel(map_id, data7, (x - 17), (y + 17))
    tilemap_set_at_pixel(map_id, data8, x, (y + 17))
    tilemap_set_at_pixel(map_id, data9, (x + 17), (y + 17))
    lay_id = layer_get_id("Tiles_1a")
    map_id = layer_tilemap_get_id(lay_id)
    data1 = tilemap_get_at_pixel(map_id, (x - 17), (y - 17))
    data2 = tilemap_get_at_pixel(map_id, x, (y - 17))
    data3 = tilemap_get_at_pixel(map_id, (x + 17), (y - 17))
    data4 = tilemap_get_at_pixel(map_id, (x - 17), y)
    data5 = tilemap_get_at_pixel(map_id, x, y)
    data6 = tilemap_get_at_pixel(map_id, (x + 17), y)
    data7 = tilemap_get_at_pixel(map_id, (x - 17), (y + 17))
    data8 = tilemap_get_at_pixel(map_id, (x - 17), (y + 17))
    data9 = tilemap_get_at_pixel(map_id, (x + 17), (y + 17))
    data1 = tile_set_empty(data1)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    data5 = tile_set_empty(data5)
    data6 = tile_set_empty(data6)
    data7 = tile_set_empty(data7)
    data8 = tile_set_empty(data8)
    data9 = tile_set_empty(data9)
    tilemap_set_at_pixel(map_id, data1, (x - 17), (y - 17))
    tilemap_set_at_pixel(map_id, data2, x, (y - 17))
    tilemap_set_at_pixel(map_id, data3, (x + 17), (y - 17))
    tilemap_set_at_pixel(map_id, data4, (x - 17), y)
    tilemap_set_at_pixel(map_id, data5, x, y)
    tilemap_set_at_pixel(map_id, data6, (x + 17), y)
    tilemap_set_at_pixel(map_id, data7, (x - 17), (y + 17))
    tilemap_set_at_pixel(map_id, data8, x, (y + 17))
    tilemap_set_at_pixel(map_id, data9, (x + 17), (y + 17))
    lay_id = layer_get_id("Tiles_4")
    map_id = layer_tilemap_get_id(lay_id)
    data1 = tilemap_get_at_pixel(map_id, (x - 17), (y - 17))
    data2 = tilemap_get_at_pixel(map_id, x, (y - 17))
    data3 = tilemap_get_at_pixel(map_id, (x + 17), (y - 17))
    data4 = tilemap_get_at_pixel(map_id, (x - 17), y)
    data5 = tilemap_get_at_pixel(map_id, x, y)
    data6 = tilemap_get_at_pixel(map_id, (x + 17), y)
    data7 = tilemap_get_at_pixel(map_id, (x - 17), (y + 17))
    data8 = tilemap_get_at_pixel(map_id, (x - 17), (y + 17))
    data9 = tilemap_get_at_pixel(map_id, (x + 17), (y + 17))
    data1 = tile_set_empty(data1)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    data5 = tile_set_empty(data5)
    data6 = tile_set_empty(data6)
    data7 = tile_set_empty(data7)
    data8 = tile_set_empty(data8)
    data9 = tile_set_empty(data9)
    tilemap_set_at_pixel(map_id, data1, (x - 17), (y - 17))
    tilemap_set_at_pixel(map_id, data2, x, (y - 17))
    tilemap_set_at_pixel(map_id, data3, (x + 17), (y - 17))
    tilemap_set_at_pixel(map_id, data4, (x - 17), y)
    tilemap_set_at_pixel(map_id, data5, x, y)
    tilemap_set_at_pixel(map_id, data6, (x + 17), y)
    tilemap_set_at_pixel(map_id, data7, (x - 17), (y + 17))
    tilemap_set_at_pixel(map_id, data8, x, (y + 17))
    tilemap_set_at_pixel(map_id, data9, (x + 17), (y + 17))
    instance_destroy()
}
