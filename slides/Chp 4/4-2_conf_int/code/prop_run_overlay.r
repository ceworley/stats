
p = 0.8
sd = sqrt(p*(1-p))

n = 500
repeats = 50

alp = 0.2

pdf('running_proportion_overlay.pdf')

for(i in 1:repeats){
    flips = (runif(n) < p)
    run = c()
    for(j in 1:n){
        run = c(run, sum(flips[1:j])/j)
    }
    if(i==1){plot(1:n, run, type='l', ylim=c(0,1), xlab='flips', ylab='running proportion', main='Overlay of many running proportions', col=rgb(0,0,0,alpha=alp))}
    else{lines(1:n, run, col=rgb(0,0,0,alpha=alp))}
}

xs = 1:n
UB = p+sd/sqrt(xs)
LB = p-sd/sqrt(xs)
dUB = p+2*sd/sqrt(xs)
dLB = p-2*sd/sqrt(xs)

lines(1:n, UB, lwd=2, col=rgb(1,0,0,alpha=1))
lines(1:n, LB, lwd=2, col=rgb(1,0,0,alpha=1))
lines(1:n, dUB, lwd=2, col=rgb(1,0,0,alpha=1))
lines(1:n, dLB, lwd=2, col=rgb(1,0,0,alpha=1))

dev.off()
