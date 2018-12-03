# 12/2/18
# calculate reference day

y=1903
rd=6

while(y<2100) :

    # print('Year %i has reference day %i'%(y,rd))
    
    if(rd==3) :
        
        print('Year %i has reference day 3'%y)
    
    y=y+1
    rd=rd+1

    if(y%4==0) :
        rd=rd+1

    rd=rd%7

# 11, 6, 5, 6 is the pattern
