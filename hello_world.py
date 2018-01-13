import random

def weekday(i) :
        if i==1 :
            print('Monday!')
        elif i==2 :
            print('Tuesday!') 
        elif i==3 :
            print('Wednesday!') 
        elif i==4 :
            print('Thursday!') 
        else :
            print('Friday!')                                 
        get_ready()

def get_ready() :
    print('Brush teeth.'),
    print('Go to school.')
    print('Get dressed.'),

def weekend() :
    """This function does awesome stuff."""    
    # print('Visit library.')
    # print('Visit Costco.')
    print('Call Grandma B.')

# for i in range(0,10) :
#     r=random.randint(1,7)
#     print('The random number is'),r
#     if (r>=1) and (r<=5) :
#         weekday(r)
#     else :
#         weekend()

# import matplotlib.pyplot as plt
# import matplotlib as mpl
# import numpy as np

# x = np.linspace(0, 20, 100)
# plt.plot(x, np.sin(x))
# plt.show()
# a='Hi'
# print(a)
if __name__== "__main__": # if name is main, code is not being imported
    print([x for x in range(10) if x%2==0])


