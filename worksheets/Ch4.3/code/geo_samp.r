mu = 5
sig = 4.47
n = 60
SE = sig/sqrt(n)

x = seq(mu-3*SE,mu+3*SE, length=1000)
y = dnorm(x,mu,SE)

pdf('geo_samp.pdf',width=5,height=3)
plot(x,y, type="l", lwd=1, 
     xaxp  = c(round(mu-3*SE,2), round(mu+3*SE,2), 6),
     xlab = "Possible Sample Mean", ylab = "Density", axes=F)
axis(1, at = round(mu+(-3:3)*SE, 2))
dev.off()
