n = 100

sample1 = sample(1:8, n, replace=T)
sample2 = sample(1:6, n, replace=T)
diffs = sample2-sample1
mod = mean(diffs)  
sod = sd(diffs)


sample3 = sample(1:8, n, replace=T)
sample4 = sample(1:6, n, replace=T)
m3 = mean(sample3)
m4 = mean(sample4)
s3 = sd(sample3)
s4 = sd(sample4)



