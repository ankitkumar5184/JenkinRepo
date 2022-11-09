def repeat(s):
    for i in s:
        if(s.find(i, (s.find(i) + 1))) == -1:
            print("chance", i)
            break
    return
s = "args"
print(repeat(s))