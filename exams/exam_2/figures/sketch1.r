pdf("sketch1.pdf", width=6, height=2)
par(mar=c(3,3,1,1))
xs = seq(-3,3,length=1000)

ys = dnorm(xs)

plot(xs, ys, 'l',xlim = c(-3,3), ylim = c(0,0.4),
     ann=FALSE,xaxt="n",yaxt="n",
     lwd=3,bty='n')
#mtext("z",side=1,at=-0.5)
mtext(c("-3","-2","-1","0","1","2","3"),side=1,at=-3:3)
mtext(c("z="),side=1,at=-3.5)
mtext(c("x="),line=1.3,side=1,at=-3.5)
mtext(c("16.5","16.6","16.7","16.8","16.9","17","17.1"),line=1.3,side=1,at=-3:3)
#mtext(c("-3","0","3"),side=1,at=c(-3,0,3))
polygon(c(xs[xs>=-1], 3, -1),c(ys[xs>=-1], 0, 0), col="red")

lines(xs, ys, 'l', lwd=3)

arrows(-2,0.25,-0.95,0.1,lwd=2,code=2)
text(-2.0,0.3,label="area = P(X>16.7)")
