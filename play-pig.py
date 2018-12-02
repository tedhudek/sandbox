# 11/10/18
# Play Pig

from random import randint

g=0 #current game number
cumulative_turns_taken=0

def roll() :
    return randint(1,6)

while(g<100) : # start a new game

    g=g+1
    v=1 #number of current turn
    z=0 #total score for the current game
    max_rolls_per_turn=1
    current_roll_num=1

    while(1) : # new roll

        w=0 #points on current turn (that would be lost if 1 is rolled)

        x=roll()
        y=roll()

        if((x==1) or (y==1)) : # turns ends by rolling a one
            #print('End of turn %i due to 1 rolled'%v)
            #print('Total remains %i'%z)
            v=v+1 # increment number of turns
            continue # restart with new turn

        else :
            w=x+y # add roll total to current turn points
        
        if((current_roll_num==max_rolls_per_turn) or (w>9)) :
            #print('Stopping turn voluntarily, adding %i to %i'%(w,z))
            z=z+w # add current turn score to total score
            #print('Total is now %i after %i turns'%(z,v))
            if(z>99) :
                print('Won after %i turns'%v)
                cumulative_turns_taken=cumulative_turns_taken+v
                break # start a new game
            v=v+1 # haven't won yet, so start a new turn
            current_roll_num=1 # and reset roll counter

        else : # we didn't roll a one, but we're not at max rolls for the turn yet, so increment roll counter and roll again
            
            current_roll_num=current_roll_num+1

print('Cumulative turns taken is %i'%cumulative_turns_taken)
