if (safe == 0 && other.state != "hitfreeze" && other.state != "deathtackle" && harmless == 0 && other.object_index != obj_cocobomb)
{
    with (other)
    {
        with (instance_create_depth((other.x - (other.x - x)), (other.y - (other.y - y)), -1, obj_effecttemporary))
            sprite_index = spr_effect5
        machstunned = 0
        stunxsc = 1.25
        stunysc = 0.75
        scaretime = 0
        stuntime = 120
        direction = point_direction(other.x, other.y, x, y)
        speed = 1
        hsp = (lengthdir_x(speed, direction) * 14)
        vsp = (lengthdir_y(speed, direction) * 14)
        speed = 0
        state = "stun"
        stun_delay = 8
        if (other.x < x)
            image_xscale = -1
        else
            image_xscale = 1
    }
}
