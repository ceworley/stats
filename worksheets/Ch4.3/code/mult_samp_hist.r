mu = 0.25
sig = 0.433
n = 36
SE = sig/sqrt(n)

x = seq(mu-3*SE,mu+3*SE, length=1000)
y = dnorm(x,mu,SE)

pdf('mult_samp_hist.pdf',width=5,height=3)
plot(x,y, type="l", lwd=1, 
     xaxp  = c(round(mu-3*SE,2), round(mu+3*SE,2), 6),
     xlab = "Possible Sample Mean", ylab = "Density", axes=F)
axis(1, at = round(mu+(-3:3)*SE, 2))
dev.off()
