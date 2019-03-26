pdf("sketch7.pdf", width=6, height=3)
par(mar=c(5,3,1,1))

mu0 = 100
n = 50
s = 14.4
x = 103.2
a = 0.1

r = abs(x-mu0)
se = s/sqrt(n)
z = abs((x-mu0)/se)

xs = seq(-3,3,length=1000)
ys = dnorm(xs)

plot(xs, ys, 'l',xlim = c(-3,3), ylim = c(0,0.4),
     ann=FALSE,xaxt="n",yaxt="n",
     lwd=1,bty='n')


axis(side=1, line=0, at=c(-3,-z,0,z,3), labels = FALSE)
mtext(c(round(mu0-3*se,2),mu0-r,mu0,mu0+r,round(mu0+3*se,2)),side=1,line=0.5,at=c(-3,-z,0,z,3))
mtext(c("x="),line=0.5,side=1,at=-3.5)

axis(side=1, line=2,at=-3:3, labels = FALSE)
mtext(-3:3,side=1,line=2.5,at=-3:3)
mtext(c("z="),line=2.5,side=1,at=-3.5)

polygon(c(xs[xs>=z], 3, z),c(ys[xs>=z], 0, 0), col=rgb(1,0,0,0.5))
polygon(c(xs[xs<=-z], -z, -3),c(ys[xs<=-z], 0, 0), col=rgb(1,0,0,0.5))
lines(c(-3,3),c(0,0),'l',lwd=1)

text(-2,0.3,label="two-tail area = p-value")

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
