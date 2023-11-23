if (global.galleryopen == 0)
{
    with (instance_create_depth(x, y, 20, obj_solid))
    {
        image_xscale = other.image_xscale
        image_yscale = other.image_yscale
    }
}
instance_destroy()
