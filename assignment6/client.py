import socket

# make client socket and connect to localhost:1234
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((socket.gethostname(), 1234))

# send message to server
s.send("A message from CS361".encode("ascii"))

#recieve message from server
msg = s.recv(1024).decode("ascii")
print("received msg: %s" % msg)

# close connection
s.close()