means = c()
sds = c()
num_trials = c()

for (i in seq(1,2000))
{
    results = rgeom(10,1/6)
    num_trials = c(num_trials,results)
    means = c(means,mean(results))
    sds = c(sds,sd(results))
}

pdf('num_trials.pdf')
hist(num_trials)
dev.off()

pdf('means.pdf')
hist(means)
dev.off()

pdf('sds.pdf')
hist(sds)
dev.off()
