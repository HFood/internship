function scr_bigs_normal() //gml_Script_scr_bigs_normal
{
    sprite_index = spr_bigs
    direction = point_direction(x, y, obj_player.x, obj_player.y)
    speed = (6 + (0.4 * global.laps))
    speed = min(speed, 8)
    image_alpha = 1
    if (ghost_cd > 0)
        ghost_cd--
    else
    {
        with (instance_create_depth(x, y, 30, obj_machafterimage))
        {
            image_index = other.image_index
            image_xscale = other.image_xscale
            sprite_index = other.sprite_index
            alarm[0] = 10
        }
        ghost_cd = 4
    }
    if (place_meeting(x, y, obj_player) && obj_player.state != "enterdoor" && obj_player.state != "doorexit" && obj_player.state != "doorkey_enter" && obj_player.state != "escapeenter")
        scr_gameover()
}

