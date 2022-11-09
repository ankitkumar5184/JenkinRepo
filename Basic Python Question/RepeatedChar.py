string = "hello Programmer"
duplicates = []
for char in string:
    if string.count(char) > 1:
        if char not in duplicates:
            duplicates.append(char)
print(duplicates)

# string = "Ankitt cypress"
# p = ""
# for char in string:
#     if char not in p:
#         p = p + char
# print(p)
