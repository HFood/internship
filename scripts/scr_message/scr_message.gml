function scr_message(argument0) //gml_Script_scr_message
{
    obj_scorekeeper.msg_txt = argument0
    with (obj_scorekeeper)
    {
        msg_y = 0
        msg_time = 0
    }
}

