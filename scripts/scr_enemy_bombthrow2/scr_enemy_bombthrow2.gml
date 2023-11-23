function scr_enemy_bombthrow2() //gml_Script_scr_enemy_bombthrow2
{
    hsp = 0
    sprite_index = spr_bandit_dynamitethrow
    if (image_index >= 6 && thrown == 0)
    {
        scr_sound(sfx_projectile)
        with (instance_create_depth((x + (image_xscale * 64)), (y - 1), 2, obj_dynamite_flying))
            hsp = (other.image_xscale * 8)
        thrown = 1
    }
}

