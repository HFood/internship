function scr_enemy_cheeser_shoot() //gml_Script_scr_enemy_cheeser_shoot
{
    hsp = 0
    sprite_index = spr_cheeser_shoot
    if (image_index >= 7 && thrown == 0)
    {
        scr_sound(sfx_projectile)
        with (instance_create_depth((x + (image_xscale * 12)), (y + 24), 2, obj_cheesebullet))
        {
            image_xscale = other.image_xscale
            hsp = (other.image_xscale * 8)
        }
        thrown = 1
    }
}

