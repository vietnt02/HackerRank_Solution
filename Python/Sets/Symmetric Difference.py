# https://www.hackerrank.com/challenges/symmetric-difference/problem
# Enter your code here. Read input from STDIN. Print output to STDOUT
M = int(input())
arr1 = set(map(int,input().split()))
N = int(input())
arr2 = set(map(int,input().split()))

a = arr1.union(arr2)
b = arr1.intersection(arr2)
a = sorted(list(a.difference(b)))
for i in a:
    print(i)