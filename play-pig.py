# 11/10/18
# Play Pig

from random import randint

g=0 #current game number

def roll() :
    return randint(1,6)

while(g<100) : # start a new game

    g=g+1
    w=0 #points on current turn (that would be lost if 1 is rolled)
    v=1 #number of turns
    z=0 #total score for the current game
    max_rolls_per_turn=1
    current_roll_num=0

    while(1) : # roll again (is this a roll or a turn?)
        w=0
        current_roll_num=current_roll_num+1

        x=roll()
        y=roll()

        #print(x,y)

        if((x==1) or (y==1)) :
            #print('End of turn %i due to 1 rolled'%v)
            #print('Total remains %i'%z)
            v=v+1
            continue

        else :
            w=x+y
        
        if(current_roll_num==max_rolls_per_turn) :
            #print('Stopping turn voluntarily, adding %i to %i'%(w,z))
            z=z+w
            #print('Total is now %i after %i turns'%(z,v))
            if(z>99) :
                print('Won after %i turns'%v)
                break
            v=v+1

