function scr_trace() //gml_Script_scr_trace
{
    var _string = ""
    for (i = 0; i < argument_count; i++)
        _string += string(argument[i])
    show_debug_message(_string)
    return;
}

