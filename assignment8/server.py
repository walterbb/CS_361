import zmq
import json

context = zmq.Context()
socket = context.socket(zmq.REP)
socket.bind("tcp://*:5555")

# save file path to json data file
filepath = "climb_data.json"

while True:
    # wait for request from client
    request = socket.recv_json()

    # respond to "add" request
    if request["method"] == "add":
        # load json data from file
        with open(filepath, "r") as file:
            data = json.load(file)

        # append new json string to list
        newData = request["data"]
        data["climbData"].append(newData)

        # update the json file
        with open(filepath, "w") as file:
            json.dump(data, file, indent=4)
        
        socket.send_json({"status": "success"})

    # respond to "get" request
    if request["method"] == "get":
        # load json data from file
        with open(filepath, "r") as file:
            data = json.load(file)

        socket.send_json(data)