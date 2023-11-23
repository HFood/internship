function scr_player_gotocheckpoint() //gml_Script_scr_player_gotocheckpoint
{
    tack0 = 0
    tack1 = 0
    tack2 = 0
    rolltotackle = 1
    machspd = 0
    machtime = 0
    tacklehit = 1
    jumpspr = spr_sauce
    grabonground = 0
    if audio_is_playing(suplexsfx)
        audio_stop_sound(suplexsfx)
    if instance_exists(tackle_particle)
        instance_destroy(tackle_particle)
    if audio_is_playing(tackle0_sfx)
        audio_stop_sound(tackle0_sfx)
    if audio_is_playing(tackle1_sfx)
        audio_stop_sound(tackle1_sfx)
    if audio_is_playing(tackle2_sfx)
        audio_stop_sound(tackle2_sfx)
    if audio_is_playing(roll_sfx)
        audio_stop_sound(roll_sfx)
    with (instance_create_depth(x, y, 1, obj_debris))
    {
        particles = 1
        hsp = (7 * choose(1, -1))
        vsp = -8
        sprite_index = other.spr_player_dead
    }
    scr_sound(sfx_transfo)
    scr_effectpoof()
    ghostcheckpoint_spd = (point_distance(x, y, spawnpoint_id.x, spawnpoint_id.y) * 0.02)
    ghostcheckpoint_spd = clamp(ghostcheckpoint_spd, 8, 27)
    state = "ghostcheckpoint"
}

