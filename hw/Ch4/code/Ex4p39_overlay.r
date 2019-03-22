#Normal population
mu = 2.5
sig = 0.03

xlims = c(mu-3*sig, mu+3*sig)

#Sample size
n = 10
se = sig/sqrt(n)

pdf("Ex4p39_overlay.pdf", width=7, height=5)

xs = seq(mu-3*sig, mu+3*sig, length=1000)
y1 = dnorm(xs, mu, sig)
y2 = dnorm(xs, mu, se)

plot(xs, y1, 'l', lwd = 2,
     ylim=c(0,max(y2)),
     ylab='density', 
     xaxt="n",
     xlab='x')
axis(1,at=mu+(-3:3)*sig)
lines(xs, y2)
legend(mu+sig,max(y2)*0.80, c('population','sampling'),
lty=c(1,1),
lwd=c(2,1))

dev.off()
