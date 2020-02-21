import math
import random
import sys
import turtle
import time

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
    #screen.tracer(0, 0) # turn off redrawing after each movement

    return t

def midpoint(a, b):
    """ Return the midpoint between points a = (ax, ay) and b = (bx, by) """
    ax, ay = a
    bx, by = b
    mx = (ax + bx) / 2
    my = (ay + by) / 2
    return mx, my

if __name__ == "__main__":    
    
    # width and height are given as command line arguments:

    #canv_width = int(sys.argv[1])
    canv_width = 200
    #canv_height = int(sys.argv[2])
    canv_height = 200
    
    # Setup the turtle by calling the turtle_setup function.

    t = turtle_setup(canv_width, canv_height)
    t.dot(40, "blue")
    #time.sleep(5)    
    t.setx(100)
    t.sety(100)
    t.dot(40, "red")
    #screen = t.getscreen()
    #screen.update()
    time.sleep(10)