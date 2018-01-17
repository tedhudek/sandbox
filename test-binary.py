# 1/16/18
# Base Conversion Program

#power_factors=[]
BASE=16
factor_counts=[]

def test_pow(testnum) : # return true if yes, false if no
    num_total_divides=0
    while testnum==int(testnum) :
        #print testnum,('is an integer value so we are starting the while loop.')
        #print('Type of testnum is'),type(testnum)
        if testnum==1 :
            #print testnum,('is one, so returning true from function.')
            return num_total_divides
        else :
            #print testnum,('is not one, so dividing it by 2.')
            testnum=testnum/BASE
            num_total_divides=num_total_divides+1
            #print ('Value is now'),testnum           
    #print testnum,('is not an integer value so returning failure.')
    return -1

# input a number

starting_num=34

while starting_num>0 :
    num=starting_num
    while True :
        x=test_pow(num)
        if x != -1 : # break out because num is a power
            break
        # otherwise say we failed and test the next number
        # print('We tested '),
        # print(num)
        # print(' and it failed.')
        num=num-1
    print('Found a power! It is '),
    print(num)
    print('And the exponent is '),
    print(x)
    #if len(factor_counts)==0 :
    #power_factors.append(num)
    starting_num=starting_num-num

#print(power_factors)
#number_of_factors=len(power_factors)


# next steps: output binary values instead of power factors
# take keyboard input
# change base

# power factors: 128, 16, 4, 2. set pointer to right-most value.
# test 1, 2, 4, 8, 16...
# 530: 256, 256, 16, 1, 1
# 0x212 (2 in 256's column, 1 in 16's column, 2 in 1's column)

# 10 should map to 65
# if count>9, ascii(val)=+55
# so if count is 12, return ascii(67)