function scr_enemy_bombthrow() //gml_Script_scr_enemy_bombthrow
{
    hsp = 0
    sprite_index = spr_builderrat_dynamitethrow
    if (image_index >= 6 && thrown == 0)
    {
        scr_sound(sfx_projectile)
        with (instance_create_depth(x, (y - 1), 2, obj_dynamite))
        {
            image_xscale = other.image_xscale
            fly_spd = 11
            vsp = -4
        }
        thrown = 1
    }
}

