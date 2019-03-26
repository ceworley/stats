
alp = 0.01
end = 100

pdf('running_die_sd_overlay.pdf',width=7,height=5)

for(j in 1:5000)
{
    sds = c()
    rolls = c()
    for(i in 1:end)
    {
        rolls = c(rolls,sample(1:6,1))
        sds = c(sds,sd(rolls)*sqrt(i-1)/sqrt(i))
    }
    if(j==1){plot(1:end, sds, lwd=0.3, type='l', ylim=c(0,4), xlab='rolls', ylab='running average', main='Overlay of many Running SDs', col=rgb(0,0,0,alpha=alp))}
    else{lines(1:end, sds, lwd=0.3, col=rgb(0,0,0,alpha=alp))}
}

#n = end
#sd = 1.707825
#p = 3.5

#xs = 1:n
#UB = p+sd/sqrt(xs)
#LB = p-sd/sqrt(xs)
#dUB = p+2*sd/sqrt(xs)
#dLB = p-2*sd/sqrt(xs)

#lines(1:n, UB, lwd=2, col=rgb(1,0,0,alpha=1))
#lines(1:n, LB, lwd=2, col=rgb(1,0,0,alpha=1))
#lines(1:n, dUB, lwd=2, col=rgb(1,0,0,alpha=1))
#lines(1:n, dLB, lwd=2, col=rgb(1,0,0,alpha=1))

dev.off()
