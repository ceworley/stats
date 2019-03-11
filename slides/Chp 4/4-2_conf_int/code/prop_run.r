
p = 0.8
sd = sqrt(p*(1-p))

n = 500
repeats = 1

alp = 1

pdf('running_proportion.pdf')

for(i in 1:repeats){
    flips = (runif(n) < p)
    run = c()
    for(j in 1:n){
        run = c(run, sum(flips[1:j])/j)
    }
    if(i==1){plot(1:n, run, type='l', ylim=c(0,1), xlab='flips', ylab='running proportion', main='A single running proportion', col=rgb(0,0,0,alpha=alp))}
    else{lines(1:n, run, col=rgb(0,0,0,alpha=alp))}
}




dev.off()
