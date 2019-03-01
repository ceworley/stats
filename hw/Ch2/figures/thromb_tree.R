library(openintro)

myPDF('thromb.pdf', 5, 3, mar=c(0.5,1,0.5,1))

treeDiag(c('Has thrombosis', 'Test result'), 
	out1 = c("sick","not sick"), 
	out2 = c("positive","negative"), 
	c(0.03, 0.97), 
	list(c(0.99, 0.01), c(0.02,0.98)),
	textwd=0.25,solwd = 0.10)

dev.off()
