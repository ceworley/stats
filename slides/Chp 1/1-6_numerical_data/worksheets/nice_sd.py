from scipy.stats import norm
from scipy.stats import tstd


n = 6


while(True):
    r = norm.rvs(5,2,size = n)
    r2 = list(map(int,map(round,r)))

    xbar = sum(r2)/n
    sd = tstd(r2)

    if xbar.is_integer() and sd.is_integer():
        print(r2)
        print(xbar)
        print(sd)
        break
