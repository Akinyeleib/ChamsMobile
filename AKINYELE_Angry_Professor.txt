# Akinyele Ibrahim’s Submission of the Assessment: Angry Professor

for i in range(2):
    N, K = [int(i) for i in input('line 1: ').split(' ')]
    T = [int(i) for i in input('line 2: ').split(' ')]
    early = 0
    for i in T:
        if i <= 0:
            early += 1
    if early >= K:
        print('NO')
    else:
        print('YES')