# https://www.hackerrank.com/challenges/py-set-symmetric-difference-operation/problem
# Enter your code here. Read input from STDIN. Print output to STDOUT
n = int(input())
en = set(map(int,input().split()))
m = int(input())
fr = set(map(int,input().split()))

a = en.symmetric_difference(fr)
print(len(a))
