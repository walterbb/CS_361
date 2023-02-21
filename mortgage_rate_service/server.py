import zmq
import FRED_rates
    
context = zmq.Context()
socket = context.socket(zmq.REP)
socket.bind("tcp://*:5555")

while True:
    #  Wait for next request from client
    message = socket.recv_string()
    print(f"Received request: {message}")

    #  Return mortgage rate as a string
    response = str(FRED_rates.adjust_rate(int(message)))

    #  Send reply back to client
    socket.send_string(f"{response}")