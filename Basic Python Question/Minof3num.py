def minimum(a, b, c):
    if (a <= b) and (a <= c):
        smallest = a
    if (b <= a) and (b <= c):
        smallest = b
    if (c <= a) and (c <= a):
        smallest = c

        return smallest


a = int(input("Enter a number "))
b = int(input("Enter a number "))
c = int(input("Enter a number "))

print(minimum(a, b, c))