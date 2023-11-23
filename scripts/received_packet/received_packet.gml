function received_packet() //gml_Script_received_packet
{
    buffer = argument0
    socket = argument1
    msgid = buffer_read(buffer, buffer_u8)
}

