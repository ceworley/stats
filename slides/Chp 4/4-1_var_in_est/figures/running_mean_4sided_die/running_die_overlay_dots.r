
alp = 0.05
end = 500

pdf('running_die_overlay_dots.pdf',width=6,height=3.5)

for(j in 1:200)
{
    means = c()
    rolls = c()
    for(i in 1:end)
    {
        rolls = c(rolls,sample(1:4,1))
        means = c(means,mean(rolls))
    }
    if(j==1){plot(1:end, means, ylim=c(1,4), xlab='rolls', ylab='running average', main='Overlay of many Running Averages', col=rgb(0,0,0,alpha=alp), pch='.')}
    else{points(1:end, means, col=rgb(0,0,0,alpha=alp), pch='.')}
}

dev.off()
