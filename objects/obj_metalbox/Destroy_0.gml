ds_list_add(global.saveroom, id)
if (object_index == obj_metalbox_hidden)
{
    var lay_id = layer_get_id("Tiles_1")
    var map_id = layer_tilemap_get_id(lay_id)
    var data1 = tilemap_get_at_pixel(map_id, x, y)
    var data2 = tilemap_get_at_pixel(map_id, x, (y - 1))
    var data3 = tilemap_get_at_pixel(map_id, (x - 1), y)
    var data4 = tilemap_get_at_pixel(map_id, (x - 1), (y - 1))
    data1 = tile_set_empty(data1)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    tilemap_set_at_pixel(map_id, data1, x, y)
    tilemap_set_at_pixel(map_id, data2, x, (y - 1))
    tilemap_set_at_pixel(map_id, data3, (x - 1), y)
    tilemap_set_at_pixel(map_id, data4, (x - 1), (y - 1))
    lay_id = layer_get_id("Tiles_1a")
    map_id = layer_tilemap_get_id(lay_id)
    data1 = tilemap_get_at_pixel(map_id, x, y)
    data2 = tilemap_get_at_pixel(map_id, x, (y - 1))
    data3 = tilemap_get_at_pixel(map_id, (x - 1), y)
    data4 = tilemap_get_at_pixel(map_id, (x - 1), (y - 1))
    data1 = tile_set_empty(data1)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    tilemap_set_at_pixel(map_id, data1, x, y)
    tilemap_set_at_pixel(map_id, data2, x, (y - 1))
    tilemap_set_at_pixel(map_id, data3, (x - 1), y)
    tilemap_set_at_pixel(map_id, data4, (x - 1), (y - 1))
    lay_id = layer_get_id("Tiles_4")
    map_id = layer_tilemap_get_id(lay_id)
    data1 = tilemap_get_at_pixel(map_id, x, y)
    data2 = tilemap_get_at_pixel(map_id, x, (y - 1))
    data3 = tilemap_get_at_pixel(map_id, (x - 1), y)
    data4 = tilemap_get_at_pixel(map_id, (x - 1), (y - 1))
    data1 = tile_set_empty(data1)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    tilemap_set_at_pixel(map_id, data1, x, y)
    tilemap_set_at_pixel(map_id, data2, x, (y - 1))
    tilemap_set_at_pixel(map_id, data3, (x - 1), y)
    tilemap_set_at_pixel(map_id, data4, (x - 1), (y - 1))
}
if (object_index == obj_metalbox_giant_hidden)
{
    lay_id = layer_get_id("Tiles_1")
    map_id = layer_tilemap_get_id(lay_id)
    data1 = tilemap_get_at_pixel(map_id, x, y)
    data2 = tilemap_get_at_pixel(map_id, x, (y - 1))
    data3 = tilemap_get_at_pixel(map_id, (x - 1), y)
    data4 = tilemap_get_at_pixel(map_id, (x - 1), (y - 1))
    var data5 = tilemap_get_at_pixel(map_id, (x - 33), y)
    var data6 = tilemap_get_at_pixel(map_id, (x - 33), (y - 1))
    var data7 = tilemap_get_at_pixel(map_id, (x - 33), (y - 33))
    var data8 = tilemap_get_at_pixel(map_id, (x - 33), (y + 32))
    var data9 = tilemap_get_at_pixel(map_id, (x + 32), y)
    var data10 = tilemap_get_at_pixel(map_id, (x + 32), (y - 1))
    var data11 = tilemap_get_at_pixel(map_id, (x + 32), (y - 33))
    var data12 = tilemap_get_at_pixel(map_id, (x + 32), (y + 32))
    var data13 = tilemap_get_at_pixel(map_id, x, (y + 32))
    var data14 = tilemap_get_at_pixel(map_id, x, (y - 33))
    var data15 = tilemap_get_at_pixel(map_id, (x - 1), (y + 32))
    var data16 = tilemap_get_at_pixel(map_id, (x - 1), (y - 33))
    data1 = tile_set_empty(data1)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    data5 = tile_set_empty(data5)
    data6 = tile_set_empty(data6)
    data7 = tile_set_empty(data7)
    data8 = tile_set_empty(data8)
    data9 = tile_set_empty(data9)
    data10 = tile_set_empty(data10)
    data11 = tile_set_empty(data11)
    data12 = tile_set_empty(data12)
    data13 = tile_set_empty(data13)
    data14 = tile_set_empty(data14)
    data15 = tile_set_empty(data15)
    data16 = tile_set_empty(data16)
    tilemap_set_at_pixel(map_id, data1, x, y)
    tilemap_set_at_pixel(map_id, data2, x, (y - 1))
    tilemap_set_at_pixel(map_id, data3, (x - 1), y)
    tilemap_set_at_pixel(map_id, data4, (x - 1), (y - 1))
    tilemap_set_at_pixel(map_id, data5, (x - 33), y)
    tilemap_set_at_pixel(map_id, data6, (x - 33), (y - 1))
    tilemap_set_at_pixel(map_id, data7, (x - 33), (y - 33))
    tilemap_set_at_pixel(map_id, data8, (x - 33), (y + 32))
    tilemap_set_at_pixel(map_id, data9, (x + 32), y)
    tilemap_set_at_pixel(map_id, data10, (x + 32), (y - 1))
    tilemap_set_at_pixel(map_id, data11, (x + 32), (y - 33))
    tilemap_set_at_pixel(map_id, data12, (x + 32), (y + 32))
    tilemap_set_at_pixel(map_id, data13, x, (y + 32))
    tilemap_set_at_pixel(map_id, data14, x, (y - 33))
    tilemap_set_at_pixel(map_id, data15, (x - 1), (y + 32))
    tilemap_set_at_pixel(map_id, data16, (x - 1), (y - 33))
    lay_id = layer_get_id("Tiles_1a")
    map_id = layer_tilemap_get_id(lay_id)
    data1 = tilemap_get_at_pixel(map_id, x, y)
    data2 = tilemap_get_at_pixel(map_id, x, (y - 1))
    data3 = tilemap_get_at_pixel(map_id, (x - 1), y)
    data4 = tilemap_get_at_pixel(map_id, (x - 1), (y - 1))
    data5 = tilemap_get_at_pixel(map_id, (x - 33), y)
    data6 = tilemap_get_at_pixel(map_id, (x - 33), (y - 1))
    data7 = tilemap_get_at_pixel(map_id, (x - 33), (y - 33))
    data8 = tilemap_get_at_pixel(map_id, (x - 33), (y + 32))
    data9 = tilemap_get_at_pixel(map_id, (x + 32), y)
    data10 = tilemap_get_at_pixel(map_id, (x + 32), (y - 1))
    data11 = tilemap_get_at_pixel(map_id, (x + 32), (y - 33))
    data12 = tilemap_get_at_pixel(map_id, (x + 32), (y + 32))
    data13 = tilemap_get_at_pixel(map_id, x, (y + 32))
    data14 = tilemap_get_at_pixel(map_id, x, (y - 33))
    data15 = tilemap_get_at_pixel(map_id, (x - 1), (y + 32))
    data16 = tilemap_get_at_pixel(map_id, (x - 1), (y - 33))
    data1 = tile_set_empty(data1)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    data5 = tile_set_empty(data5)
    data6 = tile_set_empty(data6)
    data7 = tile_set_empty(data7)
    data8 = tile_set_empty(data8)
    data9 = tile_set_empty(data9)
    data10 = tile_set_empty(data10)
    data11 = tile_set_empty(data11)
    data12 = tile_set_empty(data12)
    data13 = tile_set_empty(data13)
    data14 = tile_set_empty(data14)
    data15 = tile_set_empty(data15)
    data16 = tile_set_empty(data16)
    tilemap_set_at_pixel(map_id, data1, x, y)
    tilemap_set_at_pixel(map_id, data2, x, (y - 1))
    tilemap_set_at_pixel(map_id, data3, (x - 1), y)
    tilemap_set_at_pixel(map_id, data4, (x - 1), (y - 1))
    tilemap_set_at_pixel(map_id, data5, (x - 33), y)
    tilemap_set_at_pixel(map_id, data6, (x - 33), (y - 1))
    tilemap_set_at_pixel(map_id, data7, (x - 33), (y - 33))
    tilemap_set_at_pixel(map_id, data8, (x - 33), (y + 32))
    tilemap_set_at_pixel(map_id, data9, (x + 32), y)
    tilemap_set_at_pixel(map_id, data10, (x + 32), (y - 1))
    tilemap_set_at_pixel(map_id, data11, (x + 32), (y - 33))
    tilemap_set_at_pixel(map_id, data12, (x + 32), (y + 32))
    tilemap_set_at_pixel(map_id, data13, x, (y + 32))
    tilemap_set_at_pixel(map_id, data14, x, (y - 33))
    tilemap_set_at_pixel(map_id, data15, (x - 1), (y + 32))
    tilemap_set_at_pixel(map_id, data16, (x - 1), (y - 33))
    lay_id = layer_get_id("Tiles_4")
    map_id = layer_tilemap_get_id(lay_id)
    data1 = tilemap_get_at_pixel(map_id, x, y)
    data2 = tilemap_get_at_pixel(map_id, x, (y - 1))
    data3 = tilemap_get_at_pixel(map_id, (x - 1), y)
    data4 = tilemap_get_at_pixel(map_id, (x - 1), (y - 1))
    data5 = tilemap_get_at_pixel(map_id, (x - 33), y)
    data6 = tilemap_get_at_pixel(map_id, (x - 33), (y - 1))
    data7 = tilemap_get_at_pixel(map_id, (x - 33), (y - 33))
    data8 = tilemap_get_at_pixel(map_id, (x - 33), (y + 32))
    data9 = tilemap_get_at_pixel(map_id, (x + 32), y)
    data10 = tilemap_get_at_pixel(map_id, (x + 32), (y - 1))
    data11 = tilemap_get_at_pixel(map_id, (x + 32), (y - 33))
    data12 = tilemap_get_at_pixel(map_id, (x + 32), (y + 32))
    data13 = tilemap_get_at_pixel(map_id, x, (y + 32))
    data14 = tilemap_get_at_pixel(map_id, x, (y - 33))
    data15 = tilemap_get_at_pixel(map_id, (x - 1), (y + 32))
    data16 = tilemap_get_at_pixel(map_id, (x - 1), (y - 33))
    data1 = tile_set_empty(data1)
    data2 = tile_set_empty(data2)
    data3 = tile_set_empty(data3)
    data4 = tile_set_empty(data4)
    data5 = tile_set_empty(data5)
    data6 = tile_set_empty(data6)
    data7 = tile_set_empty(data7)
    data8 = tile_set_empty(data8)
    data9 = tile_set_empty(data9)
    data10 = tile_set_empty(data10)
    data11 = tile_set_empty(data11)
    data12 = tile_set_empty(data12)
    data13 = tile_set_empty(data13)
    data14 = tile_set_empty(data14)
    data15 = tile_set_empty(data15)
    data16 = tile_set_empty(data16)
    tilemap_set_at_pixel(map_id, data1, x, y)
    tilemap_set_at_pixel(map_id, data2, x, (y - 1))
    tilemap_set_at_pixel(map_id, data3, (x - 1), y)
    tilemap_set_at_pixel(map_id, data4, (x - 1), (y - 1))
    tilemap_set_at_pixel(map_id, data5, (x - 33), y)
    tilemap_set_at_pixel(map_id, data6, (x - 33), (y - 1))
    tilemap_set_at_pixel(map_id, data7, (x - 33), (y - 33))
    tilemap_set_at_pixel(map_id, data8, (x - 33), (y + 32))
    tilemap_set_at_pixel(map_id, data9, (x + 32), y)
    tilemap_set_at_pixel(map_id, data10, (x + 32), (y - 1))
    tilemap_set_at_pixel(map_id, data11, (x + 32), (y - 33))
    tilemap_set_at_pixel(map_id, data12, (x + 32), (y + 32))
    tilemap_set_at_pixel(map_id, data13, x, (y + 32))
    tilemap_set_at_pixel(map_id, data14, x, (y - 33))
    tilemap_set_at_pixel(map_id, data15, (x - 1), (y + 32))
    tilemap_set_at_pixel(map_id, data16, (x - 1), (y - 33))
}
