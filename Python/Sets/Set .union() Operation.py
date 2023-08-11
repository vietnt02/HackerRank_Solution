# https://www.hackerrank.com/challenges/py-set-union/problem
# Enter your code here. Read input from STDIN. Print output to STDOUT
n = int(input())
en = set(map(int,input().split()))
b = int(input())
fr = set(map(int,input().split()))

a = en.union(fr)
print(len(a))
