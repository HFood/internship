function scr_enemy_cheeseneck_shoot() //gml_Script_scr_enemy_cheeseneck_shoot
{
    hsp = 0
    sprite_index = spr_cheeseneck_shoot
    if (image_index >= 1 && thrown == 0)
    {
        scr_sound(sfx_killingblow)
        with (instance_create_depth((x + (image_xscale * 12)), (y + 20), 2, obj_cheesebullet))
        {
            image_xscale = other.image_xscale
            hsp = (other.image_xscale * 10)
            vsp = -2
        }
        with (instance_create_depth((x + (image_xscale * 12)), (y + 24), 2, obj_cheesebullet))
        {
            image_xscale = other.image_xscale
            hsp = (other.image_xscale * 10)
        }
        with (instance_create_depth((x + (image_xscale * 12)), (y + 28), 2, obj_cheesebullet))
        {
            image_xscale = other.image_xscale
            hsp = (other.image_xscale * 10)
            vsp = 2
        }
        thrown = 1
    }
}

