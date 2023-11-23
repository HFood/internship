visible = global.showcollisions
if instance_exists(obj_player)
{
    if (obj_player.spawnpoint_id == id)
        image_blend = c_red
    else
        image_blend = c_white
}
