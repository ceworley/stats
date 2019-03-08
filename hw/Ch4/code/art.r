pdf('art.pdf',width=5,height=4)
hist(rbinom(100,15,0.93)/15, breaks=((0:16)-0.5)/15, xlab='Proportion of success', main='sampling distribution',ylim=c(0,50))
dev.off()

pdf('art_many.pdf',width=5,height=4)
hist(rbinom(100,15,0.93)/15, breaks=((0:16)-0.5)/15, xlab='Proportion of success', main='sampling distribution',ylim=c(0,50), col=rgb(0,0,0,0.01), lty="blank")

for(i in 1:200){
hist(rbinom(100,15,0.93)/15, breaks=((0:16)-0.5)/15, xlab='Proportion of success', main='sampling distribution', add=TRUE, col=rgb(0,0,0,0.01), lty="blank")
}
dev.off()
