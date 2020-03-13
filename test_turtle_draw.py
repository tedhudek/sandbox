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


if __name__ == "__main__":    


    t = turtle_setup(300, 300)
    t.setx(150)
    t.sety(150)

    t.dot(2, "blue")

    time.sleep(5)  
    #t.dot(40, "red")
    #screen = t.getscreen()
    #screen.update()
