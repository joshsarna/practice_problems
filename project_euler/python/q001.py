def q001(ceiling):
    i = 1
    total = 0
    while i < ceiling:
        # if i is a multiple of 3 or 5, add it to the total
        if i % 3 == 0 or i % 5 == 0:
            total += i
        i += 1
    return total

print(q001(1000))