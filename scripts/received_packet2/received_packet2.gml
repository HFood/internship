function received_packet2() //gml_Script_received_packet2
{
    buffer = argument0
    msgid = buffer_read(buffer, buffer_u8)
}

