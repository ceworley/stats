
data = sample(c(1,0,0,0),1000000,replace=T)

pdf('mult_choice.pdf',width=4,height=3)
hist(data, breaks = 0:2-0.5, freq=F,
     main = 'Mult-choice Prob Dist',
     xaxp  = c(0,1,1),
     xlab = 'X_0',
     ylim = c(0,1))
dev.off()
