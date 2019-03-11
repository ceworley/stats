import random
import matplotlib.pyplot as plt

n = 100
rep = 100
runs = []

sd = 1.707825

pinch = 50
pinch_se = sd/(pinch)**0.5

winners = []

count = 0
for i in range(rep):
    rolls = random.choices([1,2,3,4,5,6],k=n)
    means = [0]*n
    mean = 0
    for j in range(n):
        mean = (mean*j+rolls[j])/(j+1)
        means[j] = mean
    runs.append(means)
    if means[pinch] > 3.5-pinch_se and means[pinch] < 3.5+pinch_se:
        count = count+1
        winners.append(i)

UB = []
LB = []
for en in range(1,n+1):
    UB.append(3.5+sd/en**0.5)
    LB.append(3.5-sd/en**0.5)    

for i in range(len(runs)):
    if i in winners:
        plt.plot(runs[i],'.-r')
    else:
        plt.plot(runs[i],'.-b')

print(len(winners)/rep)

plt.plot(UB,'k',linewidth=3)
plt.plot(LB,'k',linewidth=3)
    
plt.show()





