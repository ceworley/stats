from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
import numpy as np
from matplotlib import style
import random

n = 100
rep = 1000
runs = []
binwidth = 0.1

for i in range(rep):
    rolls = random.choices([1,2,3,4,5,6],k=n)
    means = [0]*n
    mean = 0
    for j in range(n):
        mean = (mean*j+rolls[j])/(j+1)
        means[j] = mean
    runs.append(means)


fig = plt.figure()
#ax1 = fig.add_subplot(111, projection='3d')
ax1 = fig.gca(projection='3d')


#xs = np.arange(-0.05,6.15,0.1)
xs = np.arange(0.1,6.1,0.2)
ys = [1,20,40,60,80,100]
cs = ['r','y','g','b','r','y','g','b','r','y','g','b']
zs = np.zeros(30)

for i in range(len(ys)):
    dxs = np.ones(30)*0.2
    dys = np.zeros(30)
    dzs = np.zeros(30)
    y = ys[i]
    for j in range(len(xs)):
        x = xs[j]
        for run in runs:
            if abs(run[y-1]-x) <= 0.1:
                dzs[j] += 1/0.2/1000
    ax1.bar3d(xs, np.ones(30)*ys[i], zs, dxs, dys, dzs,  zsort='average', color=cs[i])
    
runy = list(range(1,101))    

for run in runs[:100]:
    ax1.plot(run, runy, 'k', linewidth=0.3, zs=-0.01, zdir='z', zorder = -0.1)

ax1.set_xlabel('Running Average')
ax1.set_ylabel('Rolls')
ax1.set_zlabel('Density')

sd = 1.707825
UB = []
LB = []
dUB = []
dLB = []
for en in range(1,101):
    UB.append(3.5+sd/en**0.5)
    LB.append(3.5-sd/en**0.5)  
    dUB.append(3.5+2*sd/en**0.5)
    dLB.append(3.5-2*sd/en**0.5)  

ax1.plot(UB, runy, 'r', linewidth=0.8, zs=-0.01, zdir='z', zorder = -0.1)
ax1.plot(LB, runy, 'r', linewidth=0.8, zs=-0.01, zdir='z', zorder = -0.1)
ax1.plot(dUB, runy, 'r', linewidth=0.8, zs=-0.01, zdir='z', zorder = -0.1)
ax1.plot(dLB, runy, 'r', linewidth=0.8, zs=-0.01, zdir='z', zorder = -0.1)

fig.tight_layout()

plt.show()
#z3 = np.zeros(10)

#dx = np.ones(10)
#dy = np.ones(10)*0
#dz = [1,2,3,4,5,6,7,8,9,10]

#ax1.bar3d(x3, y3, z3, dx, dy, dz, alpha=0.1)

#ax1.set_xlabel('x axis')
#ax1.set_ylabel('y axis')
#ax1.set_zlabel('z axis')

#plt.show()
