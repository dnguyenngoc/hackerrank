# https://www.hackerrank.com/challenges/find-second-maximum-number-in-a-list/problem?h_r=profile
https://www.hackerrank.com/challenges/find-second-maximum-number-in-a-list/problem?h_r=profile
if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    arr = list(arr)
    max_ = max(arr)
    start = arr[0]
    for i in range(n):
        if (arr[i] > start) and (arr[i] < max_):
            start = arr[i]
    print(start)
