import matplotlib.pyplot as mp 


def logistic(x,k):
    return(x*k*(1-x))

def dyadic(x):
    x = 2*x
    if x >= 1:
        x = x-1
    return(x)

def tent(x):
    return(min(2*x,2-2*x))

spots = [0]*101

x = 0.53

for i in range(50):
    x = tent(x)
#    x = logistic(x,4)
#    x = dyadic(x)
#    print(x)
    print(x)
    spots[int(x*100)] += 1

print(spots)
print(x)


#mp.plot(spots)
#mp.show()
