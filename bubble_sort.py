numbers=[69,43,5,21,9]

for i in range(len(numbers)):
    # find smallest element, starting from element i
    smallest=1000
    for j in range(i,len(numbers)):
        if(numbers[j]<smallest):
            smallest=numbers[j]
            index_of_smallest=j
    # swap smallest with item i
    tmp=numbers[i]
    numbers[i]=numbers[index_of_smallest]
    numbers[index_of_smallest]=tmp
    
    print('Finished pass i= ',i,' and list looks like this:')
    print(numbers)

# TODO: better way to preset smallest or warn user to use numbers smaller than 1000 in list
