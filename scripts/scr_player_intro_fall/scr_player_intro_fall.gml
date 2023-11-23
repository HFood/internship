function scr_player_intro_fall() //gml_Script_scr_player_intro_fall
{
    scr_player_collision(0, 0)
    scr_gravity()
    if grounded
    {
        if (particle_delay > 0)
            particle_delay--
        else
        {
            with (instance_create_depth(x, y, 20, obj_effecttemporary))
            {
                sprite_index = spr_effect16
                image_xscale = other.image_xscale
            }
            particle_delay = 30
        }
    }
    xface = 1
    grabbing = 0
    spinning = 0
    tauntduration = 0
    stomp = 0
    crouch = 0
    if grounded
    {
        with (instance_create_depth(x, y, depth, obj_player))
        {
            hsp = 7
            state = "intro_land"
        }
        instance_destroy()
    }
    image_speed = 1
    sprite_index = spr_player_tumblefall
}

