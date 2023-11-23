if (_srank == -1)
{
    ini_open(global.savedata_ini)
    _score = ini_read_real("score", lvl, 0)
    _srank = ini_read_real("srank", lvl, 1000)
    _prank = ini_read_real("prank", lvl, 0)
    ini_close()
    if (_score <= 0)
        visible = false
}
