if (other.state == "ghost" && other.ghost_state != "end")
{
    other.suprastate = "normal"
    other.x = x
    other.y = y
    other.ghost_state = "end"
}
