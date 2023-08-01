#https://www.hackerrank.com/challenges/nested-list/problem
students = []
if __name__ == '__main__':
    for _ in range(int(input())):
        name = input()
        score = float(input())
        students.append([name,score])

nd_lowest = sorted(list(set([x[1] for x in students])))[1]
name_nd_lowest = [i[0] for i in students if i[1] == nd_lowest]
name_nd_lowest.sort()
for i in name_nd_lowest:
    print(i)