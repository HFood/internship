if (_score > _srank && _prank == 1)
    image_index = 0
else if (_score > _srank)
    image_index = 1
else if (_score > (_srank / 2))
    image_index = 2
else if (_score > ((_srank / 2) * 0.66))
    image_index = 3
else if (_score > ((_srank / 2) * 0.33))
    image_index = 4
else
    image_index = 5
