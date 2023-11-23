function scr_player_ghostcheckpoint() //gml_Script_scr_player_ghostcheckpoint
{
    xface = 1
    grabbing = 0
    spinning = 0
    tauntduration = 0
    stomp = 0
    crouch = 0
    hsp = 0
    vsp = 0
    if (particle_delay > 0)
        particle_delay--
    else
    {
        with (instance_create_depth((x + irandom_range(-10, 10)), (y + irandom_range(-10, 10)), 10, obj_effecttemporary))
            sprite_index = spr_effect1
        particle_delay = 4
    }
    image_speed = 1
    sprite_index = spr_player_ghostcheckpoint
    if instance_exists(spawnpoint_id)
    {
        direction = point_direction(x, y, spawnpoint_id.x, (spawnpoint_id.bbox_bottom - 52))
        speed = ghostcheckpoint_spd
        if collision_rectangle((x - 4), (y - 4), (x + 4), (y + 4), obj_spawnpoint, 0, 1)
        {
            scr_effectpoof()
            speed = 0
            state = "normal"
            x = spawnpoint_id.x
            y = (spawnpoint_id.bbox_bottom - 52)
        }
    }
}

