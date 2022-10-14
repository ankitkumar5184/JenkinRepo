num = int(input("Enter a number "))
factorial = 1
if num < 0:
    print("factorial is nit exist")
elif num == 0:
    print("factorial of 0 and 1")
else:
    for i in range(1, num + 1):
        factorial = factorial * i
        print("factorial of", num, "is", factorial)

# for i in range(1, num + 1):
#     factorial = factorial * i
#     print("factorial of", num, "is", factorial)