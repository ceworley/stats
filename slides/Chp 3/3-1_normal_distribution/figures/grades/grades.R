grades=c(40,52,43,40,53,24,25,38,56,25,29,37,26,38,37,39,17,54,46,47,12,43,39,16,28,17,28,29,27,52,31,48,42)

pdf('grades.pdf',height=5,width=7)
hist(grades,xlab='raw score')
dev.off()

xbar = mean(grades)
s = sd(grades)

fakegrades = rnorm(1e6,xbar,s)

pdf('fakegrades.pdf',height=5,width=7)
hist(fakegrades,xlab='raw score',xlim=c(10,60))
dev.off()

pdf('fakegrades2.pdf',height=5,width=7)
hist(fakegrades,xlab='raw score',xlim=c(10,60),breaks=100)
dev.off()

pdf('fakegrades3.pdf',height=5,width=7)
hist(fakegrades,xlab='raw score',xlim=c(10,60),freq=FALSE)
dev.off()

pdf('fakegrades4.pdf',height=5,width=7)
hist(fakegrades,xlab='raw score',xlim=c(10,60),breaks=100,freq=FALSE)
dev.off()

fakegrades = rnorm(1e7,xbar,s)
pdf('fakegrades5.pdf',height=5,width=7)
hist(fakegrades,xlab='raw score',xlim=c(10,60),breaks=500,freq=FALSE)
dev.off()
