import math

def isPrime(number):
    if number == 2:
        return True
    elif number < 2:
        return False
    
    i = 2
    while i <= math.sqrt(number):
        if number % i == 0:
            return False
        i += 1

    return True
        

def q003(product):
    i = 2
    while i < product:
        if product % i == 0:
            factor = product / i
            if isPrime(factor):
                return factor
        i += 1

print(q003(600851475143))