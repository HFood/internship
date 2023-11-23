function scr_enemy_spellcast() //gml_Script_scr_enemy_spellcast
{
    hsp = 0
    sprite_index = spr_magician_spellcast
    if (image_index >= 7 && thrown == 0)
    {
        scr_sound(sfx_projectile)
        with (instance_create_depth((x + (image_xscale * 64)), (y - 1), 2, obj_spell))
        {
            if (other.image_xscale == -1)
                direction = 180
        }
        thrown = 1
    }
}

