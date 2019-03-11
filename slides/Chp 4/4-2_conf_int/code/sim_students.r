n = 10
r = 200 #repeats 



pdf('student_activity.pdf',width=7,height=5)
means = c()
for(j in 1:r)
{
    xbar = mean(sample(1:6,n,replace=T))
    means = c(means, xbar)
}
hist(means,breaks=(n-1):(6*n)/n+1/2/n)

dev.off()
