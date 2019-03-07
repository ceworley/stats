
pdf('single_rolls.pdf',width=6,height=4)

hist(sample(1:6,1000,replace=TRUE),breaks=0:6+0.5)

dev.off()
