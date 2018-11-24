# 11/10/18
# Play Pig

from random import randint

w=0 #points on current turn (that would be lost if 1 is rolled)
v=1 #number of turns
z=0 #total score
max_rolls_per_turn=1

def roll() :
    return randint(1,6)

while(1) :
    current_roll_num=1
    w=0

    x=roll()
    y=roll()

    print(x,y)

    if((x==1) or (y==1)) :
        print('End of turn %i due to 1 rolled'%v)
        print('Total remains %i'%z)
        v=v+1
        continue

    else :
        w=x+y
    
    if(current_roll_num==max_rolls_per_turn) :
        print('Stopping turn voluntarily, adding %i to %i'%(w,z))
        z=z+w
        print('Total is now %i after %i turns'%(z,v))
        if(z>99) :
            break
        v=v+1

#z==100?yes: print(z) no: repeat starting with roll
