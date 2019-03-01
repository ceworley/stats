from scipy.stats import norm, tstd
num = 8
mean = 262
sd = 10
digs = 0

while True:
#    x = list(map(lambda x:round(x,digs), norm.rvs(mean, sd, num)))
    x = list(map(int, norm.rvs(mean, sd, num-1)))
    x.append(300)
    xbar = sum(x)/num
    sd = tstd(x)
    if xbar.is_integer() and sd.is_integer():
        print(x)
        print(xbar)
        print(sd)
        break
    
    
