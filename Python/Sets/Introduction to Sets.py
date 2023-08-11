# https://www.hackerrank.com/challenges/py-introduction-to-sets/problem
def average(array):
    # your code goes here
    array = set(array)
    c = sum(array) / len(array)
    return c
if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    result = average(arr)
    print(result)