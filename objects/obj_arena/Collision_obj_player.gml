if (global.arena == 0)
{
    with (obj_arena_spawner)
    {
        if (global.arena_round == rnd)
            yes = 1
    }
    scr_message("ROUND 1")
    global.arena = 1
    global.arena_round = 1
}
