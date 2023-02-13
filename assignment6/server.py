import socket

# make server socket and bind to localhost:1234
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((socket.gethostname(), 1234))

# listen to at most 5 requests
s.listen(5)

while True:
    # accept connection
    clientsocket, address = s.accept()

    print("Got connection from %s" % str(address))

    # recieve message from client
    msg = clientsocket.recv(1024).decode("ascii")
    print("received msg: %s" % msg)

    # send message to client
    clientsocket.send("A message from CS361".encode("ascii"))

    # close connection
    clientsocket.close()