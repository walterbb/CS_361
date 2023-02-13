import zmq

context = zmq.Context()
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5555")

# request to add a new climb to the list
climb = {
    "name": "Alphane",
    "grade": 17
}

socket.send_json({"method": "add", "data": climb})
response = socket.recv_json()
print(response)

# request to get list of climb data
socket.send_json({"method": "get"})
response = socket.recv_json()
print(response)