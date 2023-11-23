if (passby == 0)
{
    if (timer > 0)
        timer--
    else
        instance_destroy()
}
else
{
    drawy -= 0.08
    if (drawalpha > 0)
        drawalpha -= 0.01
    else
        instance_destroy()
}
if (room == rm_timesup || room == rm_rank)
{
    visible = false
    instance_destroy()
}
