# 1/1/18
# Base Conversion Program

power_factors=[]

def test_pow(testnum) : # return true if yes, false if no
    while testnum==int(testnum) :
        #print testnum,('is an integer value so we are starting the while loop.')
        #print('Type of testnum is'),type(testnum)
        if testnum==1 :
            #print testnum,('is one, so returning true from function.')
            return True
        else :
            #print testnum,('is not one, so dividing it by 2.')
            testnum=testnum/2
            #print ('Value is now'),testnum           
    #print testnum,('is not an integer value so returning failure.')
    return False

# input a number

starting_num=150

while starting_num>0 :
    num=starting_num
    while test_pow(float(num))==False :
        #print('We tested '),num,(' and it failed.')
        num=num-1
    #print('Found a power! It is '),num
    power_factors.append(num)
    starting_num=starting_num-num

print(power_factors)

# next steps: output binary values instead of power factors
# take keyboard input
# change base

# current output: 64,4,2. set pointer to right-most value.
# test 1,2,4,8,16,32,64,128...
