pdf("sketch9.pdf", width=6, height=2.5)
par(mar=c(5,3,1,1))

mu = 500
s = 20

a = 505
b = 560

zlo = (a-mu)/s
zhi = (b-mu)/s

xs = seq(-3,3,length=1000)
ys = dnorm(xs)

plot(xs, ys, 'l',xlim = c(-3,3), ylim = c(0,0.4),
     ann=FALSE,xaxt="n",yaxt="n",
     lwd=1,bty='n')

axis(side=1, line=0, at=-3:3, labels = FALSE)
mtext(mu+(-3:3)*s,side=1,line=0.5,at=-3:3)
mtext(c("x="),line=0.5,side=1,at=-3.5)
#mtext("x",side=1,line=0.5,at=0.25)

axis(side=1, line=2,at=-3:3, labels = FALSE)
mtext(-3:3,side=1,line=2.5,at=-3:3)
mtext(c("z="),line=2.5,side=1,at=-3.5)
#mtext("z",side=1,line=2.5,at=0.25)

polygon(c(xs[xs>=zlo & xs<=zhi], zhi, zlo),c(ys[xs>=zlo & xs<=zhi], 0, 0), col=rgb(1,0,0,0.5))
lines(c(-3,3),c(0,0),'l',lwd=1)

text(1,0.1,label="area = 0.4")

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
