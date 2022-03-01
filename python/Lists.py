# https://www.hackerrank.com/challenges/python-lists/problem?h_r=profile
# sorry if code not clean. I don't have time to fix this code

if __name__ == '__main__':
    N = int(input())
    array = []
    for i in range(N):
        inp = input()
        inp = inp.split(" ")
        action = inp[0]
        try:
            data = [int(item) for item in inp[1:]]
        except:
            data = None
        if action == 'append':
            array.append(data[0])
        elif action == 'insert':
            array.insert(data[0], data[1])
        elif action == 'remove':
            array.remove(data[0])
        elif action == 'pop':
            array.pop(len(array) -1)        
        elif action == 'sort':
            array.sort()
        elif action == 'reverse':
            array.reverse()
        else:
            print(array)
    
    
