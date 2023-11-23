if (other.key_up && other.grounded && other.crouch == 0 && other.spinning == 0 && other.grabbing == 0 && (other.state == "normal" || other.state == "tackle1" || other.state == "tackle2" || other.state == "superjumpprep"))
{
    with (obj_camera)
        mach_x = 0
    ini_open(global.savedata_ini)
    ini_write_real("story", "tutorial_done", 1)
    ini_close()
    ds_list_clear(global.saveroom)
    global.heat = 1
    global.heat_meter = 0
    global.stylin_score = 0
    global.combo = 0
    global.timer = 0
    global.score = 0
    global.key = 0
    global.level = "hub"
    scr_1sound(sfx_door)
    instance_create_depth(x, y, -10, obj_fade)
    with (obj_scorekeeper)
    {
        comboscoreplus = 0
        fakescore = 0
    }
    with (obj_player)
    {
        if instance_exists(tackle_particle)
            instance_destroy(tackle_particle)
        if audio_is_playing(tackle1_sfx)
            audio_stop_sound(tackle1_sfx)
        if audio_is_playing(tackle2_sfx)
            audio_stop_sound(tackle2_sfx)
        if audio_is_playing(roll_sfx)
            audio_stop_sound(roll_sfx)
        tack0 = 0
        tack1 = 0
        tack2 = 0
        doorexit_state = "exit"
        door_id = other.id
        doorexit_shocked = 0
        door_rm = 85
        door_x = other.targx
        door_y = other.targy
        state = "enterdoor"
        image_index = 0
    }
}
