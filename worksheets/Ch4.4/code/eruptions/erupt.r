
pop = faithful$waiting

pdf("faithful.pdf")

for(i in 1:30)
{
    means = c()
    for(j in 1:10000)
    {
        means = c(means, mean(sample(pop, i, replace=T)))
    }
    mu = round(mean(means), 0)
    s = round(sd(means), 1)
    if(i == 1)
    {
    hist(means, xlim=c(40,100), freq=F, main = paste(c("Histogram of individual wait times","\n mu=",mu,"  s=",s), collapse=''))
    }
    else{
    hist(means, xlim=c(40,100), freq=F, main = paste(c("Histogram of means,  n=",i,"\n mu=",mu,"  s=",s), collapse=''))
    }
}
dev.off()
