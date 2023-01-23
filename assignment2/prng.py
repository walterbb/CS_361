import random
import time

while True:
    time.sleep(1)

    file = open("prng.txt", 'r')
    line = file.readline()
    file.close()

    if(line == "run"):
        print("Generating random number.")
        file = open("prng.txt", 'w')
        num  = str(random.randint(0,100))
        file.write(num)
        file.close()