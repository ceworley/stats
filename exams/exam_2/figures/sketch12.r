pdf("sketch12.pdf", width=6, height=2)
par(mar=c(5,3,1,1))

n = 100
p = .25

bino = rbinom(1e7,n,p)
mu = n*p
s = sqrt(n*p*(1-p))

low = floor(mu-3*s)
high = ceiling(mu+3*s)

xs = seq(low,high,length=1000)
ys = dnorm(xs,mu,s)

hist(bino,xlim=c(low,high),freq=FALSE,breaks=(0:n+1)-0.5,main=NULL,xlab=NULL,ann=FALSE, xaxt='n', ylab=NULL, yaxt='n')
polygon(c(xs[xs<=25.5], 25.5, low),c(ys[xs<=25.5], 0, 0), col=rgb(1,0,0,0.5))
hist(bino,xlim=c(low,high),freq=FALSE,breaks=(0:n+1)-0.5,main=NULL,xlab=NULL,ann=FALSE, xaxt='n', ylab=NULL, yaxt='n', add=T)
curve(dnorm(x,mu,s),add=TRUE)

axis(side=1, line=2,at=n*p+(-3:3)*s, labels = FALSE)
mtext(c("-3","-2","-1","0","1","2","3"),side=1,line=2.5,at=n*p+(-3:3)*s)
mtext(c("z="),line=2.5,side=1,at=n*p+(-3.5)*s)

axis(side=1, line=0, at=n*p+(-10:10)*2, labels = FALSE)
mtext(n*p+(-7:7)*2,side=1,line=0.5,at=n*p+(-7:7)*2)
mtext(c("x="),line=0.5,side=1,at=n*p+(-3.5)*s)

dev.off()


#xs = seq(46,86,length=1000)

#ys = dnorm(xs,)

#plot(xs, ys, 'l',xlim = c(-3,3), ylim = c(0,0.4),
#     ann=FALSE,xaxt="n",yaxt="n",
#     lwd=1,bty='n')
##mtext("z",side=1,at=-0.5)
##mtext(c("-3","-2","-1","0","1","2","3"),side=1,at=-3:3)
##mtext(c("zstar"),side=1,line =-0.3,at=1.64)
#mtext(c("z="),side=1,at=-3.5)
#mtext(c("x="),line=1.3,side=1,at=-3.5)
#mtext(c("-zstar","0","zstar"),side=1,at=c(-1.75,0,1.75))
#mtext(c("15.53-ME","15.53","15.53+ME"),line=1.3,side=1,at=c(-1.75,0,1.75))
##mtext(round(255+(-3:3)*1.75,2),line=1.3,side=1,at=-3:3)
##mtext(c("-3","0","3"),side=1,at=c(-3,0,3))
#polygon(c(xs[xs>=-1.75 & xs<=1.75], 1.75, -1.75),c(ys[xs>=-1.75 & xs<=1.75], 0, 0), col="red")
##polygon(c(xs[xs>=2.5], 3, 2.5),c(ys[xs>=2.5], 0, 0), col="red")

#lines(xs, ys, 'l', lwd=1)
#lines(c(-3,3),c(0,0),'l',lwd=1)

##arrows(-2,0.25,0,0.06,lwd=2,code=2)
#text(0,0.2,label="area = 0.92")
