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
number_of_factors=len(power_factors)

current_place_value=1
current_test_index=number_of_factors-1

while current_test_index>=0 :
    # is power_factors[current_test_index]==current_place_value?
    # if yes, output current_place_value is 


    current_test_index--


# next steps: output binary values instead of power factors
# take keyboard input
# change base

# power factors: 128, 16, 4, 2. set pointer to right-most value.
# test 1, 2, 4, 8, 16...
# 530: 256, 256, 16, 1, 1
# 0x212 (2 in 256's column, 1 in 16's column, 2 in 1's column)
