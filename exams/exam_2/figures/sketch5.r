pdf("sketch5.pdf", width=6, height=2)
par(mar=c(3,3,1,1))
xs = seq(-3,3,length=1000)

ys = dnorm(xs)

plot(xs, ys, 'l',xlim = c(-3,3), ylim = c(0,0.4),
     ann=FALSE,xaxt="n",yaxt="n",
     lwd=1,bty='n')
#mtext("z",side=1,at=-0.5)
#mtext(c("-3","-2","-1","0","1","2","3"),side=1,at=-3:3)
#mtext(c("zstar"),side=1,line =-0.3,at=1.64)
mtext(c("z="),side=1,at=-3.5)
mtext(c("x="),line=1.3,side=1,at=-3.5)
mtext(c("-zstar","0","zstar"),side=1,at=c(-1.75,0,1.75))
mtext(c("15.53-ME","15.53","15.53+ME"),line=1.3,side=1,at=c(-1.75,0,1.75))
#mtext(round(255+(-3:3)*1.75,2),line=1.3,side=1,at=-3:3)
#mtext(c("-3","0","3"),side=1,at=c(-3,0,3))
polygon(c(xs[xs>=-1.75 & xs<=1.75], 1.75, -1.75),c(ys[xs>=-1.75 & xs<=1.75], 0, 0), col=rgb(1,0,0,0.5))
#polygon(c(xs[xs>=2.5], 3, 2.5),c(ys[xs>=2.5], 0, 0), col="red")

lines(xs, ys, 'l', lwd=1)
lines(c(-3,3),c(0,0),'l',lwd=1)

#arrows(-2,0.25,0,0.06,lwd=2,code=2)
text(0,0.2,label="area = 0.92")
