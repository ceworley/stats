n = 100
p = .8

bino = rbinom(1e6,n,p)
mu = n*p
s = sqrt(n*p*(1-p))

low = floor(mu-3*s)
high = ceiling(mu+3*s)

pdf(paste(c('overlay_',n,'_',p*100,'.pdf'), collapse=""),width=5,height=3)
hist(bino,xlim=c(low,high),freq=FALSE,breaks=(0:n+1)-0.5,main=NULL,xlab=NULL,ann=FALSE, xaxt='n', ylab=NULL, yaxt='n')
curve(dnorm(x,mu,s),add=TRUE)

dev.off()

