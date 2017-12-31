def test_pow(testnum) : # return true if yes, false if no
    while testnum==int(testnum) :
        print testnum,('is an integer value so we are starting the while loop.')
        print('Type of testnum is'),type(testnum)
        if testnum==1 :
            print testnum,('is one, so returning true from function.')
            return TRUE
        else :
            print testnum,('is not one, so dividing it by 2.')
            testnum=testnum/2
            print ('Value is now'),testnum           
    print testnum,('is not an integer value so returning failure.')
    return FALSE

# input a number

num=1000000000
print('Starting with'),num
test_pow(float(num))

# startingnum, testnum
# while testnum is greater than zero:
#   is number power of 2? if yes, display the number and then subtract it from the previous total
#   if no, subtract one





# test cases:
# 138: 128, 8, 2

