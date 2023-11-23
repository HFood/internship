if (timer > 0)
    timer--
else
    image_alpha -= 0.04
if (image_alpha <= 0)
    instance_destroy()
if (room != rm_charselect)
    instance_destroy()
