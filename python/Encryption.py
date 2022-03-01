#https://www.hackerrank.com/challenges/encryption/problem?isFullScreen=true
import math

def encryption(s):
    s = s.replace(' ', '')
    l = len(s)
    sq = math.sqrt(l)
    if sq.is_integer() == False: # sq là float ex: 3.44534534 (căn số xấu) thì row + 1
        sq = int(sq) + 1
    else:                        # sq là int ex: 6.0 (căn số đẹp) => row = sq
        sq = int(sq)
    encode = ['' for _ in range(sq)]
    for i in range(l):
        encode[(i)%(sq)] += s[i] 
    return ' '.join(encode)

print(encryption("iffactasdontfittotheorychangethefacts"))