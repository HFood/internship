port = 69420
max_clients = 2
network_create_server(0, port, max_clients)
server_buffer = buffer_create(1024, buffer_fixed, 1)
socket_list = ds_list_create()
