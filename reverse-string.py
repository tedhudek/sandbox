# Is it a palindrome?
#
# Ask user for a string (could be numbers, letters, or a mix) and then reverse the order of characters.

n=input("Please enter your a number or word to see if it is a palendrome")
l=len(n)
r=''

for i in range((l-1),-1,-1):
    r=r+n[i]

if(r==n):
    print('Yes.',r,'is a palendrome of',n,'yay!!!!!!!!')
else:
        print('No.',r,'is not a palendrome of',n,'boo!!!!!!!!')
