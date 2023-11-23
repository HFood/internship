x += hsp
y += vsp
if instance_place(x, y, obj_solid)
{
    var _sol = instance_place(x, y, obj_solid)
    instance_create_depth(x, (_sol.bbox_top - 1), 1, obj_sauce)
    instance_destroy()
}
image_xscale = sign(hsp)
if (y > (room_height + 32))
    instance_destroy()
