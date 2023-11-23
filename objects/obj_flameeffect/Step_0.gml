speed -= 0.2
image_angle += (angstr * (image_xscale / 2))
image_xscale -= 0.05
image_yscale = image_xscale
if (image_xscale <= 0)
    instance_destroy()
