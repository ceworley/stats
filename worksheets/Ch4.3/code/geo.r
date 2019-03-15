set.seed(2)

data = rgeom(100000,0.2)

pdf('geo_hist.pdf',width=4,height=3)
hist(data, breaks = 0:100-0.5, freq=F,
     main = 'Attempts until win Prob Dist',
     xlab = 'X', xlim=c(0,20))
dev.off()
