
means = c()
rolls = c()

end = 50

for(i in 1:end)
{
    rolls = c(rolls,51*runif(1))
    means = c(means,mean(rolls))
}

pdf('running_weight.pdf',width=6,height=3.5)

plot(1:end, means, type='l', xlab='sample size (n)', ylab='running average', main='How accurate is our point estimate?')
dev.off()

pdf('weight_hist.pdf',width=6,height=4)
hist(rolls,xlab='measurement', ylab='frequency', main='Histogram of sample from unknown population')
dev.off()

print(mean(rolls))
print(sd(rolls))
