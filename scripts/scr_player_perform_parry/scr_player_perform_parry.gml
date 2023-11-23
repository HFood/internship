function scr_player_perform_parry(argument0, argument1, argument2, argument3) //gml_Script_scr_player_perform_parry
{
    tauntduration = 0
    with (instance_create_depth((x + (image_xscale * 24)), y, 10, obj_effecttemporary))
    {
        image_xscale = 2
        image_yscale = 2
        sprite_index = spr_effect2
    }
    spinhit_moving = argument0
    if (argument0 == 1)
    {
        image_xscale = (-argument1)
        spinhit_dir = argument1
        hsp = (argument2 * image_xscale)
        vsp = argument3
    }
    if audio_is_playing(suplexsfx)
        audio_stop_sound(suplexsfx)
    scr_sound(sfx_parry)
    image_index = 0
    sprite_index = choose(spr_player_parry1, spr_player_parry2, spr_player_parry3)
    state = "parry"
    rolltotackle = 1
    tacklehit = 1
    tackle_airhit = 1
}

