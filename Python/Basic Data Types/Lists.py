# https://www.hackerrank.com/challenges/python-lists?isFullScreen=true
if __name__ == '__main__':
    N = int(input())
    l0 = []
    for _ in range(N):
        a, *b = input().split()
        b = list(map(int,b))
        if a == 'print':
            print(l0)
        else:
            getattr(l0,a)(*b)