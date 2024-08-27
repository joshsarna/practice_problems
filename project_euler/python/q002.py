def q002(ceiling):
    total = 2
    lowerValue = 1
    upperValue = 2

    while upperValue < ceiling:
        if upperValue % 2 == 0:
            total += upperValue
        lowerValue, upperValue = upperValue, lowerValue + upperValue
        
    return total

print(q002(4000000))