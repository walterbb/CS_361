import time

numImages = 6

while True:
    time.sleep(1)
    
    file = open("image.txt", "r")
    line = file.readline()
    file.close()

    try:
        int(line)
    except ValueError:
        pass
    else:
        print("Generating image path.")
        file = open("image.txt", "w")
        file.write("images/")
        line = int(line) % numImages
        line = str(line)
        file.write(line)
        file.write(".jpg")
        file.close()