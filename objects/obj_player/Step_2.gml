if inwater
    vsp = clamp(vsp, -14, 16)
else if (state == "bodyslam")
    vsp = min(vsp, 24)
else
    vsp = min(vsp, 17)
slopemomentum = clamp(slopemomentum, -5, 3)
spotlight1 = (x - (image_xscale * 32))
spotlight2 = (x - (image_xscale * 64))
spotlight3 = (x - (image_xscale * 96))
spotlight4 = (x - (image_xscale * 128))
spotlight5 = (x - (image_xscale * 160))
