# 11/10/18
# Play Pig

from random import randint

total_points=0

def roll() :
    x=randint(1,6)
    y=randint(1,6)
    print('You rolled %i and %i'%(x,y))
    if((x==1) or (y==1)) :
        print('You lose')
    else :
        print('You win')

roll()
