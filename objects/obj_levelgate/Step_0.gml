if instance_exists(obj_player)
{
    if (place_meeting(x, y, obj_player) && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && (obj_player.state == "normal" || obj_player.state == "tackle1" || obj_player.state == "tackle2"))
    {
        if (!instance_exists(cursid))
        {
            with (instance_create_depth(obj_player.x, (obj_player.bbox_top - 32), -1, obj_pointer))
            {
                other.cursid = id
                targ = 160
            }
        }
    }
    else
        instance_destroy(cursid)
}
if (oj == 1)
{
    if (timertofade > 0)
        timertofade--
    else
    {
        instance_create_depth(x, y, -10, obj_fade)
        oj = 0
    }
}
