
means = c()
rolls = c()

end = 500

for(i in 1:end)
{
    rolls = c(rolls,sample(1:4,1))
    means = c(means,mean(rolls))
}

pdf('running_die.pdf',width=6,height=3.5)

plot(1:end, means, type='l', xlab='rolls', ylab='running average', main='The point estimate approaches the expected value.')
