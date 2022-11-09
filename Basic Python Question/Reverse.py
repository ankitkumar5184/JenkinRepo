def reverse(str1, x):
    n = (len(str1) - x) // 2

    for i in range(n):
        print(str1[i], end="")

    for i in range(n + x - 1, n - 1, -1):
        print(str1[i], end="")

    for i in range(n + x, len(str1)):
        print(str1[i], end="")

str1 = "Ankit"
x = 2
reverse(str1, x)
