if (instance_exists(obj_player) && global.escape == 1)
{
    if (place_meeting(x, y, obj_player) && obj_player.grounded && obj_player.crouch == 0 && obj_player.spinning == 0 && obj_player.grabbing == 0 && (obj_player.state == "normal" || obj_player.state == "tackle1" || obj_player.state == "tackle2"))
    {
        if (!instance_exists(cursid))
        {
            with (instance_create_depth(obj_player.x, (obj_player.bbox_top - 32), -1, obj_pointer))
            {
                other.cursid = id
                targ = 160
            }
        }
    }
    else
        instance_destroy(cursid)
}
if (itsokay == 0)
    image_index = 2
else
    image_index = global.escape
if (nowyou == 1)
{
    with (obj_player)
    {
        visible = false
        depth = 1
    }
    global.escape = 0
    global.trainescape = 0
    scr_transfo_msg_clear()
    instance_destroy(obj_comborank)
    instance_destroy(obj_effecttarget)
    instance_destroy(obj_effecttemporary)
    audio_group_stop_all(1)
    audio_stop_sound(global.trainsfx)
    ini_open(global.savedata_ini)
    var _tut = ini_read_real("story", "entrancedone", 0)
    if (_tut == 0)
        ini_write_real("story", "entrancedone", 1)
    var prevscore = ini_read_real("score", global.level, 0)
    var prevsecrets = ini_read_real("secrets", global.level, 0)
    if (prevscore <= global.score)
        ini_write_real("score", global.level, global.score)
    if (prevsecrets <= global.secrets)
        ini_write_real("secrets", global.level, global.secrets)
    if (global.treasure != 0)
        ini_write_real("treasure", global.level, global.treasure)
    if (global.treasure == 1 && global.laps > 0 && global.secrets >= 3 && global.prankable == 1 && global.score >= global.srank)
    {
        ini_write_real("prank", global.level, 1)
        global.gonnaprank = 1
    }
    audio_stop_sound(sfx_tick)
    audio_stop_sound(sfx_ding)
    audio_stop_sound(sfx_cashreg)
    ini_close()
    room_goto(rm_rank)
}
