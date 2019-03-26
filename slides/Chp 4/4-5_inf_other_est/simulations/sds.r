x = 1:6
P = rep(1/6,6)
mu = sum(x*P)
sig = sqrt(sum((x-mu)^2*P))

sds = c()

for(i in 1:30000)
{
    sds = c(sds, sd(round(runif(20,0.5,6.5),0))*sqrt(19)/sqrt(20)  )
}

print(sum(sds>sig))
hist(sds,breaks=30)

