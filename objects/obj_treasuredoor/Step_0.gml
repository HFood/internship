if instance_exists(obj_player)
{
    if (place_meeting(x, y, obj_player) && global.key == 1 && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && (obj_player.state == "normal" || obj_player.state == "tackle1" || obj_player.state == "tackle2"))
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
if (doit == 1)
{
    scr_1sound(sfx_door)
    instance_create_depth(x, y, -10, obj_fade)
    with (instance_create_depth(x, y, depth, obj_door))
    {
        sprite_index = spr_treasuredoor
        other.createdoor = id
        rm = other.rm
        targx = other.targx
        targy = other.targy
    }
    with (obj_player)
    {
        doorexit_state = "exit"
        door_id = other.createdoor
        doorexit_shocked = 0
        door_rm = other.rm
        door_x = other.targx
        door_y = other.targy
        state = "enterdoor"
        image_index = 2
    }
    instance_destroy()
}
if (opening == 1)
    sprite_index = spr_treasuredoor_open
else if (open == 1)
    sprite_index = spr_treasuredoor
else
    sprite_index = spr_treasuredoor_closed
