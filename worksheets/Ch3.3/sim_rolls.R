means = c()
sds = c()

for (i in seq(1,12))
{
    results = rgeo(10,1/6)
    means = c(means,mean(results))
    sds = c(sds,sd(results))
}

hist(means)
hist(sds)
