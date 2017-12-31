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
    print('Get dressed.'),
    print('Brush teeth.'),
    print('Go to school.')

def weekend() :
    print('Visit library.')
    print('Visit Costco.')
    print('Call Grandma B.')

for i in range(0,10) :
    r=random.randint(1,7)
    print('The random number is'),r
    if (r>=1) and (r<=5) :
        weekday(r)
    else :
        weekend()
