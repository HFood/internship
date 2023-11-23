if (global.escape == 0)
{
    switch room
    {
        case Room2:
            global.exittimer_min = 0
            global.exittimer_sec = 11
            global.exittimer_ms = 60
            break
    }

    instance_create_depth(x, y, -1, obj_escapesign)
    global.escape = 1
}
