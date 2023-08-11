# https://www.hackerrank.com/challenges/py-check-strict-superset/problem
# Enter your code here. Read input from STDIN. Print output to STDOUT
A = set(map(int,input().split()))
n = int(input())
for i in range (n):
    B = set(map(int,input().split()))
    check = A.issuperset(B)
    if not check:
        check = False
        break
    else:
        check = True
print(check)
