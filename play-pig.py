# 11/10/18
# Play Pig

from random import randint

total_points=0
v=0 #number of turns
z=0 #total score

def roll() :
    return randint(1,6)

x=roll()
y=roll()

print(x,y)

#if((x==1) or (y==1)) :
    #w stays zero, add w to z
#else :
    #x+y=w, add w to z
#v++
#z==100?yes: print(z) no: repeat starting with roll
