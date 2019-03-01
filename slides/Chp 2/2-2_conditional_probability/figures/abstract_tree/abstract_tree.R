library(openintro)


myPDF('abstract_tree_first.pdf', 7, 3.75, mar=c(0,0,0,0))

treeDiag(c('A', 'B'), out1 = c("A","not A"), out2 = c("B","not B"), c(0.6, 0.4), list(c(0.9, 0.1), c(0.3, 0.7)), showWork = FALSE, solwd=0.23)

dev.off()



myPDF('abstract_tree_second.pdf', 7, 3.75, mar=c(0,0,0,0))

treeDiag(c('A', 'B'), out1 = c("A","not A"), out2 = c("B","not B"), c(0.6, 0.4), list(c(0.9, 0.1), c(0.3, 0.7)), showWork = TRUE, solwd=0.23)

dev.off()
