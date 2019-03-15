
data = sample(1:6,1000000,replace=T)

pdf('dice_hist.pdf',width=4,height=3)
hist(data, breaks = 1:7-0.5, freq=F,
     main = '6-sided die Prob Dist',
     xlab = 'X_0')
dev.off()
