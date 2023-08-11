# https://www.hackerrank.com/challenges/py-the-captains-room/problem
# Enter your code here. Read input from STDIN. Print output to STDOUT
K = int(input())
arr = list(map(int,input().split()))
a = {}
for i in arr:
    if i in a:
        a[i] += 1
    else:
        a[i] = 1
print(next(i for i in a if a[i] == 1))
