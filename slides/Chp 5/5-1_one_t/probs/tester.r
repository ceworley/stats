CL = sample(c(0.8,0.90,0.95,0.96,0.98,0.99,0.995),1)
ME = sample(c(1,2,5),1) * 10^sample(-2:3,1)
n = rgeom(1,0.005)+60

zstar = qnorm((CL+1)/2)
SE = ME/zstar
s = SE*sqrt(n)



