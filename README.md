# CS_361
 Work for Software Engineering I [CS361]

# Spray Cave Climbing App
An app to upload and view custom rock climbs for the Dixon cave climbing wall.

# Mortgage Rate Microservice
A microservice to calculate mortgage rate based on credit score.

# Connect to server
import zmq

context = zmq.Context()
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5555")

# Sending requests
To make a request, send a string containing the credit score to the server.

Example:
socket.send_string("650")

# Receiving response
To receive the response, wait for a string containing the mortage rate from the server.

Example:
response = socket.recv_string()

# Close connect
To close and unbind the socket once done, you can run the following:

socket.unbind("tcp://localhost:5555")
socket.close()
context.term()