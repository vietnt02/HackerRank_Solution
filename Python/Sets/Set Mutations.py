# https://www.hackerrank.com/challenges/py-set-mutations/problem
# Enter your code here. Read input from STDIN. Print output to STDOUT
a = int(input())
A = set(map(int,input().split()))
N = int(input())
x1 = list()
x2 = list()
for i in range(N):
    x1.append(input().split())
    x2.append(input().split())
    x2 = [set(map(int,i)) for i in x2]
for i in range(len(x1)):
    if x1[i][0] == 'intersection_update':
        A.intersection_update(x2[i])
    elif x1[i][0] == 'update':
        A.update(x2[i])
    elif x1[i][0] == 'difference_update':
        A.difference_update(x2[i])
    elif x1[i][0] == 'symmetric_difference_update':
        A.symmetric_difference_update(x2[i])
print(sum(A))
