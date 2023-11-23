function scr_enemy_run() //gml_Script_scr_enemy_run
{
    hsp = (image_xscale * 7)
    sprite_index = spr_rabbit_run
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_ghostmove))
        {
            dis_spd = 0.08
            plain = 0
            sprite_index = other.sprite_index
            image_index = other.image_index
            image_xscale = other.image_xscale
            image_yscale = other.image_yscale
        }
        ghost_cd = 4
    }
    if place_meeting((x + image_xscale), y, obj_solid)
        image_xscale = (-image_xscale)
    if (collision_rectangle((x - 192), (y - 64), (x + 192), (y + 64), obj_player, 0, 1) && object_index != obj_dummy)
    {
        if (obj_player.state == "tackle2" || obj_player.state == "sodaride" || obj_player.state == "jetpack_run" || (obj_player.state == "jetpack_dash" && obj_player.crouch == 0))
        {
            if (obj_player.x < x)
                image_xscale = -1
            else
                image_xscale = 1
            scaretime = 160
            state = "scared"
        }
    }
}

