# https://www.hackerrank.com/challenges/py-set-add/problem
# Enter your code here. Read input from STDIN. Print output to STDOUT
arr = set()
N = int(input())
for i in range(N):
    arr.add(input())
a = len(arr)
print(a)
