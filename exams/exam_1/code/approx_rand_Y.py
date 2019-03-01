import random



lows = range(60,160,5)
pds = [12.75, 12.25, 6.75, 6.25, 5.75, 5.25, 0, 0, 0, 1, 1, 0, 0, 0, 5.25, 5.75, 6.25, 6.75, 12.25, 12.75]

cds = []
total = 0
for d in pds:
    total += d
    cds.append(total/100)

picks = []
for i in range(50):
    x = random.random()
    for i in range(len(cds)):
        if cds[i] > x:
            picks.append(round(lows[i]+5*random.random(),1))
            break

print(picks) 
