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
if place_meeting(x, y, obj_doorA)
    doornum = "A"
if place_meeting(x, y, obj_doorB)
    doornum = "B"
if place_meeting(x, y, obj_doorC)
    doornum = "C"
if place_meeting(x, y, obj_doorD)
    doornum = "D"
