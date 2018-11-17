# 11/10/18
# Play Pig

from random import randint

total_points=0
v=0 #number of turns
z=0 #total score

def roll(x,y) :
    x=randint(1,6)
    y=randint(1,6)

roll(x,y)
if((x==1) or (y==1)) :
    #w stays zero, add w to z
else :
    #x+y=w, add w to z
v++
#z==100?yes: print(z) no: repeat starting with roll
#print('You rolled %i and %i'%(x,y))
