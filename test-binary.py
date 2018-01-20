# 1/16/18
# Base Conversion Program

BASE=2
factor_counts=[]

def test_pow(testnum) : # return true if yes, false if no
    num_total_divides=0
    while testnum==int(testnum) :
        if testnum==1 :
            return num_total_divides
        else :
            testnum=testnum/BASE
            num_total_divides=num_total_divides+1
    return -1

# input a number

starting_num=20

while starting_num>0 :
    num=starting_num
    while True :
        x=test_pow(num)
        if x != -1 : # break out because num is a power
            break
        num=num-1
    print('Found a power! It is %i and the exponent is %i'%(num,x))
    if not factor_counts:
        # list is empty so let's initialize it
        factor_counts=[0] * x
        factor_counts.append(1)
    else:
        # list is not empty, so add one to the proper column
        factor_counts[x]=factor_counts[x]+1
    starting_num=starting_num-num


print(factor_counts)

# next steps: output binary values instead of power factors
# take keyboard input
# change base

# 530: 256, 256, 16, 1, 1
# 0x212 (2 in 256's column, 1 in 16's column, 2 in 1's column)

# 10 should map to 65
# if count>9, ascii(val)=+55
# so if count is 12, return ascii(67)