# 11/3/18
# Factorial Calculator

def factorial(n) :
    if n>1 :
        return n*factorial(n-1)
    else :
        return n

starting_num=int(input("Please enter the integer for which you would like to calculate the factorial:"))

print('Starting number is %i'%starting_num)

result=factorial(starting_num)

print('Result is %i'%result)
