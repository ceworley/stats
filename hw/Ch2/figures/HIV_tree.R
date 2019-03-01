library(openintro)

myPDF('hiv.pdf', 5, 3, mar=c(0.5,1,0.5,1))

treeDiag(c('Has HIV', 'Test result'), 
	out1 = c("sick","not sick"), 
	out2 = c("positive","negative"), 
	c(0.259, 0.741), 
	list(c(0.997, 0.003), c(0.074,0.926)),
	textwd=0.25,solwd = 0.10)

dev.off()
