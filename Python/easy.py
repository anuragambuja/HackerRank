# 1. Say "Hello, World!" With Python
# https://www.hackerrank.com/challenges/py-hello-world/problem

print("Hello, World!")

# 2. Python If-Else
# https://www.hackerrank.com/challenges/py-if-else/problem
n = int(input().strip())
if n%2 != 0:
    print('Weird')
elif 2 <= n <=5:
    print('Not Weird')
elif 6 <= n <=20:
    print('Weird')
else:
    print('Not Weird')
    
# 3. Arithmetic Operators
# https://www.hackerrank.com/challenges/python-arithmetic-operators/problem
a = int(input())
b = int(input())
print(a+b, a-b, a*b, sep='\n')

# 4. Python: Division
# https://www.hackerrank.com/challenges/python-division/problem
a = int(input())
b = int(input())
print(a//b,a/b,sep='\n')

# 5. Loops
# https://www.hackerrank.com/challenges/python-loops/problem
n = int(input())
for i in range(n):
    print(i*i)

# 6. Write a function
# https://www.hackerrank.com/challenges/write-a-function/problem
def is_leap(year):
    leap = False
    if (year%4 == 0 and year%100 != 0) or (year%400 == 0):
        leap = True
    return leap
year = int(input())
print(is_leap(year))

# 7. Print Function
# https://www.hackerrank.com/challenges/python-print/problem
n = int(input())
for i in range(1,n+1):
    print(i,sep='',end='')

# 8. List Comprehensions
# https://www.hackerrank.com/challenges/list-comprehensions/problem
x = int(input())
y = int(input())
z = int(input())
n = int(input())
print([[i,j,k] for i in range(x+1) for j in range(y+1) for k in range(z+1) if i+j+k != n])

# 9. Find the Runner-Up Score!
# https://www.hackerrank.com/challenges/find-second-maximum-number-in-a-list/problem
n = int(input())
arr = map(int, input().split())
print(sorted(set(arr)).pop(-2))

# 10. Nested Lists
# https://www.hackerrank.com/challenges/nested-list/problem
stud = list()
for _ in range(int(input())):
    name = input()
    score = float(input())
    stud.append([name,score])
secmin = sorted(set([x[1] for x in stud])).pop(1)
for n in sorted([x[0] for x in stud if x[1] == secmin]):
    print (n)
    
# 11. 
    
