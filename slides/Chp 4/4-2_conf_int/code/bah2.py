from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import numpy as np
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
ax = fig.add_subplot(111, projection='3d')
for c, z in zip(['r', 'g', 'b', 'y','k'], [100, 75, 50, 25, 0]):
    xs = np.arange(20)
    ys = np.random.rand(20)

    # You can provide either a single color or an array. To demonstrate this,
    # the first bar of each set will be colored cyan.
    cs = [c] * len(xs)
    ax.bar(xs, ys, zs=z, zdir='y', color=cs, alpha=0.8)

ax.set_xlabel('Mean')
ax.set_ylabel('Rolls')
ax.set_zlabel('Density')

plt.show()
