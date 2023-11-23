if (pillar == 0)
{
    if (tvshow == 1)
    {
        with (obj_scorekeeper)
            tutorial_tvshow = 1
    }
    if (obj_scorekeeper.rmg_active == 0)
    {
        scr_radiomessage(txt, emo)
        instance_destroy()
    }
    else if (attach == 0)
    {
        persistent = 1
        attach = 1
    }
}
