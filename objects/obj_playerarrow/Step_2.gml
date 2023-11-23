if instance_exists(obj_player)
{
    if (obj_player.bbox_right < -32 || obj_player.bbox_bottom < 0 || obj_player.bbox_left > room_width || obj_player.bbox_top > (room_height + 32))
    {
        image_angle = point_direction(x, y, obj_player.x, obj_player.y)
        x = max(64, min((room_width - 64), obj_player.x))
        y = max(64, min((room_height - 64), obj_player.y))
        visible = true
    }
    else
        visible = false
}
else
    instance_destroy()
