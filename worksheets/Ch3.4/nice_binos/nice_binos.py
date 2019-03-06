from random import randint, random
from math import sqrt

def sd(n, p):
    return sqrt(n*p*(1-p))

def mean(n, p):
    return n*p

while True:
    p = randint(1,999)/1000
    n = int(10/p)+randint(1,10*int(10/p))
    mu = mean(n,p)
    s = sd(n,p)
    if mu.is_integer() and s.is_integer():
        print(n,p,mu,s)
        break
