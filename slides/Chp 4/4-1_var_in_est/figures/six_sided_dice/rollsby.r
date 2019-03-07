repeats = 10000
n = 100

xlabel = paste(c("mean, when ",n," dice are rolled"),collapse='')
title = paste(c(repeats," repetitions of rolling ",n," dice"),collapse='')

means = c()

for(i in 1:repeats)
{
    means=c(means,mean(sample(1:6,n,replace=TRUE)))
}

filename = paste(c('rolls_by_',n,'.pdf'),collapse='')
pdf(filename,width=6,height=4)

hist(means,xlim=c(0,7),breaks=((n-1):(6*n))/n+1/2/n ,
     xlab=xlabel, main=title, freq=FALSE)

dev.off()
