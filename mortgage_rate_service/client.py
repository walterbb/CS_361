import zmq

context = zmq.Context()

#  Socket to talk to server
print("Connecting to get rate server")
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5555")

credit_scores = [650, 665, 680, 720, 770]

#  Do 5 requests, waiting each time for a response
for request in range(5):
    print(f"Sending request {request} …")
    socket.send_string(f"{credit_scores[request]}")

    #  Get the reply
    message = socket.recv_string()
    print(f"Received reply {request} [ {message} ]")

# Close and unbind socket once done
socket.unbind("tcp://localhost:5555")
socket.close()
context.term()