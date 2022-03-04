# Enter your code here. Read input from STDIN. Print output to STDOUT
s = input()
num_odd = []
num_even = []
str_lower = []
str_upper = []

# Bubble Sort
def sort(arr):
    n = len(arr)
    x = ''
    for i in range(n):
        min_j = i
        for j in range(i+1, n):
            if arr[j] < arr[min_j]:
                min_j = j
        x+= str(arr[min_j])        
        arr[min_j], arr[i] = arr[i], arr[min_j]
    return x
            

for char in s:
    if char.isnumeric():
        if int(char)%2 == 1:
            num_odd.append(char)
        else:
            num_even.append(char)
    elif char.islower():
        str_lower.append(char)
    else:
        str_upper.append(char)
        
end = sort(str_lower) + sort(str_upper)+ sort(num_odd) + sort(num_even) 
print(end)