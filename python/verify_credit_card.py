import re


def validate(data):
    valid = 'Valid'
    invalid = 'Invalid'
    if data[0] not in ['4','5','6']: return invalid       
    if re.search(r'^[0-9\-]+$', data) == None: return invalid
    length = len(data)
    if length == 16:
        count = 0
        char_start = data[0]
        check = valid
        for i in range(length):
            char = data[i]
            if char == char_start:
                count += 1
            else:
                char_start = char
                count = 1
            if count == 4:
                check = invalid
                break
        return check
    if length == 19:
        if data[4] != '-' or data[9] != '-' or data[14] != '-': return invalid
        else:
            data = data.replace("-", '')
            if len(data) != 16: return invalid
            else:
                count = 0
                char_start = data[0]
                check = valid
                for i in range(length):
                    char = data[i]
                    if char == char_start:
                        count += 1
                    else:
                        char_start = char
                        count = 1
                    if count == 4:
                        check = invalid
                        break
                return check
    else: return invalid

string = '5133-3367-8912-3456'
print(validate(string))