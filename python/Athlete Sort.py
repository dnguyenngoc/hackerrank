#!/bin/python3
# sorry if code not clean. I don't have time to fix this code
# https://www.hackerrank.com/challenges/python-sort-sort/problem?h_r=profile

import math
import os
import random
import re
import sys


if __name__ == '__main__':
    nm = input().split()
    n = int(nm[0])
    m = int(nm[1])
    arr = []
    for _ in range(n):
        arr.append(list(map(int, input().rstrip().split())))
        
    k = int(input())
    list_arrange = [arr[i][k] for i in range(n)]
    def sortList(array):
        list_x = [i for i in range(len(array))]   
        swap = True
        for i in range(len(array)):
            stt = i
            for j in range(0, (len(array) - i - 1)):
                if array[j] > array[j + 1]:
                    (array[j], array[j + 1]) = (array[j + 1], array[j])
                    (list_x[j], list_x[j + 1]) = (list_x[j + 1], list_x[j])
                    stt = j + 1
                    swap = False
                    if swap == True:
                        break
        return list_x
    end_array = sortList(list_arrange)
    for item in end_array:
        x = ''
        for s in arr[item]:
            x += ' ' + str(s)
        print(x[1:])   