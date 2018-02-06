
# 2/3/18
# Base Conversion Program

import time
from tkinter import *
#start_time = time.time()

BASE=16
starting_num=46
s=starting_num # make a copy for final display purposes
factor_counts=[]
final_result=''
root=Tk()

def test_pow(testnum) : # return true if yes, false if no
    # keep dividing by BASE and return true if we get to one
    num_total_divides=0
    while testnum==int(testnum) :
        if testnum==1 :
            return num_total_divides # exponent of power
        else :
            testnum=testnum/BASE
            num_total_divides=num_total_divides+1
    return -1

def convert_to_value(digit):
    # digit is greater than 9, so convert it to a character, starting with A for 10
    global final_result
    digit=digit+55
    final_result=final_result+chr(digit)

while starting_num>0 :
    num=starting_num
    while True :
        # print('Testing %i'%num)
        x=test_pow(num)
        if x != -1 : # break out because num is a power
            break
        num=num-1
    if not factor_counts:
        # list is empty so let's initialize it
        factor_counts=[0] * x
        factor_counts.append(1)
    else:
        # list is already populated, so add one to the proper column
        factor_counts[x]=factor_counts[x]+1
    starting_num=starting_num-num

# by default, lists display the zero element on the left, so flip it around before we output digits
factor_counts.reverse()

for digit in factor_counts:
    if digit>9:
        convert_to_value(digit)
    else:
        final_result=final_result+str(digit)

Label(root, text='Converted %i to base %i'%(s,BASE)).pack()
Label(root, text='Result is %s'%final_result).pack()
#print(final_result)
#time_string="--- %s seconds ---" % (time.time() - start_time)
#Label(root, text=time_string).pack()

root.mainloop()

# take keyboard input
# then display each digit in concatenated form
# add code comments, test big numbers, add GUI
# share code with others?
# http://epydoc.sourceforge.net/docstrings.html
