library(openintro)

myPDF('scott.pdf', 5, 3, mar=c(0.5,1,0.5,1))

treeDiag(c('Voted for', 'Has college degree'), 
	out1 = c("scott","not scott"), 
	out2 = c("college","not college"), 
	c(0.53, 0.47), 
	list(c(0.37, 1-0.37), c(0.44,1-0.44)),
	textwd=0.25,solwd = 0.10)

dev.off()
