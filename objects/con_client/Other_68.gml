type_event = ds_map_find_value(async_load, "type")
switch type_event
{
    case 3:
        buffer = ds_map_find_value(async_load, "buffer")
        buffer_seek(buffer, buffer_seek_start, 0)
        received_packet2(buffer)
        break
}

