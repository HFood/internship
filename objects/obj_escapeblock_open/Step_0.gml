if (global.escape == 1 && ng == 0)
{
    with (instance_create_depth(x, y, 19, obj_escapeblock_closed))
        ng = 1
    instance_destroy()
}
