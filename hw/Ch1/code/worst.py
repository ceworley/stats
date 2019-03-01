from scipy.stats import tstd

scores = 22*[73.6]
total = 74*24

high = total - 23*73.6
low = total-high-22*73.6

sd = tstd(scores+[high]+[low])

while tstd(scores+[high]+[low]) < 8.9:
    high = high+0.1
    low = low-0.1
    
print(high,low)

print(tstd(scores+[high]+[low]))
print(tstd(scores+[high]+[low]+[64]))
