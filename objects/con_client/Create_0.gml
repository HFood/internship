client = network_create_socket(0)
connected = network_connect(client, "127.0.0.1", 69420)
client_buffer = buffer_create(1024, buffer_fixed, 1)
