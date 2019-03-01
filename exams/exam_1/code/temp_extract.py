import matplotlib.pyplot as plt

import string

temps = []
with open('Complete_TAVG_complete.txt') as ff:
    for line in ff:
        try:
            if line.split()[0][0] in string.digits:
                data = line.split()
                year = int(data[0]) 
                if year >= 1959 and year <= 2018:
                    temps.append(float(data[2]))
        except:
            pass

co2 = []
with open('co2_mm_mlo.txt') as ff:
    for line in ff:
        try:
            if line.split()[0][0] in string.digits:
                data = line.split()
                year = int(data[0]) 
                if year >= 1959 and year <= 2018:
                    co2.append(float(data[5]))
        except:
            pass


avet = []
avec = []

for i in range(len(temps)//12):
    at = 0
    ac = 0
    for j in range(12):
        at += temps[i*12+j]/12
        ac += co2[i*12+j]/12
    avet.append(at)
    avec.append(ac)

#plt.plot(avec,avet,'o')
#plt.show()

print(avet)
print(avec)
