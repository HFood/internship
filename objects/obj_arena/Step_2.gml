if (global.arena == 1 && arena_enem_left <= 0)
{
    if (global.arena_round > rnd)
    {
        scr_message("ARENA COMPLETE")
        global.arena = 0
        instance_destroy()
    }
    else
    {
        with (obj_arena_spawner)
        {
            if (global.arena_round == rnd)
                yes = 1
        }
        scr_message(("ROUND " + string(global.arena_round)))
        global.arena_round++
    }
}
