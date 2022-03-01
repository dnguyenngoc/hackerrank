# https://www.hackerrank.com/challenges/find-second-maximum-number-in-a-list/problem?h_r=profile

# not check yet!
i = int(input())
lis = list(map(int,input().strip().split()))[:i]
z = max(lis)
while max(lis) == z:
    lis.remove(max(lis))
print(max(lis))