
alp = 0.3
end = 500

pdf('running_die_overlay.pdf',width=7,height=5)

lists = list()

for(j in 1:100)
{
    means = c()
    rolls = c()
    for(i in 1:end)
    {
        rolls = c(rolls,sample(1:6,1))
        means = c(means,mean(rolls))
    }
    if(j==1){plot(1:end, means, type='l', ylim=c(1,6), xlab='rolls', ylab='running average', main='Overlay of many Running Averages', col=rgb(0,0,0,alpha=alp))}
    else{lines(1:end, means, col=rgb(0,0,0,alpha=alp))}
    list.append(lists, means)
}

dev.off()

print(lists)
