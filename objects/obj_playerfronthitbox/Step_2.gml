if instance_exists(targ)
{
    image_xscale = targ.image_xscale
    x = targ.x
    y = targ.y
}
else
    instance_destroy()
