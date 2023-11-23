if (pillar == 1)
{
    if (pillar_id == noone && instance_place(x, y, obj_pillar))
        pillar_id = instance_place(x, y, obj_pillar)
    if ((!instance_exists(pillar_id)) && instance_exists(obj_player))
    {
        if (obj_scorekeeper.rmg_active == 0)
        {
            scr_radiomessage(txt, emo)
            instance_destroy()
        }
        else if (attach == 0)
        {
            pillar = 0
            attach = 1
        }
    }
}
