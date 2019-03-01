
counts = c()
for(i in seq(1,10000))
{
    counts = c(counts,sum(abs(rnorm(20))<1))
}

pdf('variability_of_68_rule.pdf')
hist(counts, 
    xlab='How many outside 1 standard deviation',
    main='10000 repetitions of sampling 20 normal random variables')
dev.off()


