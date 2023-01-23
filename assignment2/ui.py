import time
from tkinter import *
from tkinter.ttk import *
from PIL import ImageTk, Image

def click():
    # get image path using services
    prng = open("prng.txt", "w")
    prng.write("run")
    prng.close()
    time.sleep(2)

    prng = open("prng.txt", "r")
    num = prng.readline()

    image = open("image.txt", "w")
    image.write(num)
    image.close()
    time.sleep(2)

    image = open("image.txt", "r")
    path = image.readline()
    prng.close()
    image.close()

    # display image
    image = ImageTk.PhotoImage(Image.open(path).resize((200,200)))
    label.config(image = image)
    label.image = image


top = Tk()

button = Button(top, text = "click me!")
label = Label(top)

button.config(command = click)

button.pack()
label.pack()

top.mainloop()