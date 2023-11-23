function scr_enemy_deathtackle() //gml_Script_scr_enemy_deathtackle
{
    if ((place_meeting((x + 1), (y + 1), obj_solid) || place_meeting((x - 1), (y - 1), obj_solid)) && (!(place_meeting((x + 1), (y + 1), obj_destroyable))) && (!(place_meeting((x - 1), (y - 1), obj_destroyable))))
        hp--
    if (place_meeting((x + 1), (y + 1), obj_destroyable) && (!(place_meeting((x + 1), (y + 1), obj_pillar))))
    {
        var destr = instance_place((x + 1), (y + 1), obj_destroyable)
        destr.hp--
    }
    if (place_meeting((x - 1), (y - 1), obj_destroyable) && (!(place_meeting((x - 1), (y - 1), obj_pillar))))
    {
        destr = instance_place((x - 1), (y - 1), obj_destroyable)
        destr.hp--
    }
    if place_meeting(x, y, obj_enemy)
    {
        destr = instance_place(x, y, obj_enemy)
        destr.hp--
        baddies_tackled++
        if (baddies_tackled == 2)
        {
            baddies_tackled++
            with (instance_create_depth(x, y, -1, obj_comborank))
            {
                passby = 1
                image_speed = 1
                sprite_index = spr_strike
            }
        }
    }
    hsp = (deathside * 20)
    vsp = 0
    if (object_index != obj_dummy)
        sprite_index = asset_get_index((("spr_" + string(enem_type)) + "_stun"))
}

