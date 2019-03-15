
pdf("expo.pdf")

for(i in 1:30)
{
    means = c()
    for(j in 1:20000)
    {
        means = c(means, mean(2*rexp(i)))
    }
    mu = round(mean(means), 1)
    s = round(sd(means), 2)
    if(i == 1){
        hist(means, xlim=c(0,5), freq=F, 
     main = paste(c("Histogram of individual draws","\n mu=",mu,"  s=",s),
     collapse=''),
     breaks = seq(0,100,0.2))
    }
    else{
    hist(means, xlim=c(0,5), freq=F, main = paste(c("Histogram of means,  n=",i,"\n mu=",mu,"  s=",s), collapse=''),
         breaks = seq(0,100,0.2))
    }
}

dev.off()
