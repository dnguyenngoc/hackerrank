# https://www.hackerrank.com/challenges/the-minion-game/problem?h_r=profile

def minion_game(string):
    str_len = len(string)
    player1_score = 0
    player2_score = 0
    vowels = "UEOAI"
    users = ['Kevin','Stuart']
    for i in range(str_len):
        if s[i] in vowels:
            player1_score += (str_len)-i
        else :
            player2_score += (str_len)-i
    if player1_score > player2_score:
        print(users[0], player1_score)
    elif player1_score < player2_score:
        print(users[1], player2_score)
    else:
        print("Draw")
 

if __name__ == '__main__':
    s = input()
    minion_game(s)