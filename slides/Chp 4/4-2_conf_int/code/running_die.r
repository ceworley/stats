

end = 500

pdf('running_die.pdf',width=7,height=5)


means = c()
rolls = c()
for(i in 1:end)
{
    rolls = c(rolls,sample(1:6,1))
    means = c(means,mean(rolls))
}
plot(1:end, means, type='l', lwd=3, ylim=c(1,6), xlab='rolls', ylab='running average', main='A single Running Average (6-sided die)', col=rgb(0,0,0,alpha=1))



dev.off()
