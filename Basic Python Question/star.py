# num = int(input("Enter number"))
# for i in range(0,num):
#     for j in range(0,i+1):
#         print("*",end=" ")
#     print()
#
# factorial = 1
# for i in range(1,num+1):
#     factorial = factorial*i
# print("the factorial of",num,"is",factorial)


x, y = 0, 1
for i in range(0, 7):
    print(x)
    x, y = y, x+y
