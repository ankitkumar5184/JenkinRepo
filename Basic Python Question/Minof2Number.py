def minimum(a, b):
    if a <= b:
        return a
    else:
        return b

a = int(input("Enter a number "))
b = int(input("Enter a number "))
print(minimum(a, b))