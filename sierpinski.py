import math
import random
import sys
import turtle
import time
from math import sqrt

def turtle_setup(canv_width, canv_height):
    """ Set up the canvas and a turtle for coloring pixels. Return a turtle
        object in hidden state with its pen up. The canvas has size canv_width
        by canv_height, with a coordinate system where (0,0) is in the bottom
        left corner, and automatic re-drawing of the canvas is disabled so that
        turtle.update() must be called to update the drawing.
    """
    # create a turtle to color pixels with
    t = turtle.Turtle()

    # set the screen size, coordinate system, and color mode:
    screen = t.getscreen()
    screen.setup(canv_width, canv_height)
    screen.setworldcoordinates(0, 0, canv_width, canv_height)
    screen.colormode(255) # specify how colors are set: we'll use 0-255

    t.up() # lift the pen
    t.hideturtle() # hide the turtle triangle
    screen.tracer(0, 0) # turn off redrawing after each movement

    return t

def midpoint(a, b):
    """ Return the midpoint between points a = (ax, ay) and b = (bx, by) """
    ax, ay = a
    bx, by = b
    mx = (ax + bx) / 2
    my = (ay + by) / 2
    return mx, my


def get_distance(a, b):
    """ Return the distance between points a = (ax, ay) and b = (bx, by) """
    ax, ay = a
    bx, by = b
    legA = bx-ax
    legB = by-ay

    d=sqrt(legA**2 + legB**2)

    # to discuss normalizing, figure distance from triangle center to vertex
    # this is max distance
    # use canvas size when normaiizing

    # normalize to 0-255

    return d

if __name__ == "__main__":    
    #print("Just started main. code working.")
    #time.sleep(5)

    # width and height are given as command line arguments:

    #canv_width = int(sys.argv[1])
    canv_width = 600
    #canv_height = int(sys.argv[2])
    canv_height = 600
    
    corners=[(0,0),(canv_width/2,canv_height),(canv_width,0)]

    # Setup the turtle by calling the turtle_setup function.

    t = turtle_setup(canv_width, canv_height)
    screen = t.getscreen()

    # pick a random point, call it current_point
    current_point=(random.randrange(canv_width),random.randrange(canv_height))

    iterations_left=100000
    print("Yay, we got this far! About to start while loop :)")
    time.sleep(2)

    # max distance is:
    max_distance=sqrt(canv_height**2 + (canv_width/2)**2)
    adjuster=max_distance/255
    print(max_distance)
   
    print(adjuster)
    time.sleep(2)
    # max distance/255 is our adjuster

    # divide all distances by adjuster, and convert to nearest integer

    while iterations_left>0:


        
        # pick a random corner of the triangle, call it random_corner. It is a number: 1, 2 or 3(they are the 3 corners)
        corner_number=random.randrange(3)
        # get the coordinates of our random corner 0, 1, or 2 and coordinates of our current point
        current_corner_point=corners[corner_number]
        # call midpoint function
        current_point=midpoint(current_corner_point,current_point)
        # draw a dot at the point returned by the midpoint function

        t.setx(current_point[0])
        t.sety(current_point[1])

        # calculate distance between current_point and each of the three vertices


        redval=get_distance(corners[0],current_point)/adjuster
        greenval=get_distance(corners[1],current_point)/adjuster
        blueval=get_distance(corners[2],current_point)/adjuster

        t.pencolor(int(redval),int(greenval),int(blueval))
        t.dot(2)
        #t.dot(2, "blue")

        if(iterations_left%20000==0):
            print('In while loop with %i iterations left'%iterations_left)

        iterations_left=iterations_left-1
#print('Starting number is %i'%starting_num)

    screen.update()
    print('Done drawing, about to sleep')

    time.sleep(20)

# TODO: get rid of global variables

