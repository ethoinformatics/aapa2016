#!/usr/bin/Rscript

setwd('~/Desktop/')

library(animation)
library(ggplot2)

cells <- 500
nreps <- 100

set.seed(1)
illumina <- data.frame(x=runif(cells),y=runif(cells),color=factor(sample(1:4,cells,replace=TRUE),levels=1:4))

palette <- c('A'='#5050FF','C'='#E00000','G'='#00C000','T'='#E6E600',' '='#FFFFFF')

plot.cells <- function(n) {
	print(ggplot(illumina,aes(x,y,color=sample(color,cells))) + geom_point(size=6) + scale_color_manual(values=palette) + theme(panel.background = element_rect(fill = "#000000",colour = NA), plot.background = element_rect(fill = "#000000",colour = NA), axis.line=element_blank(),axis.text.x=element_blank(),axis.text.y=element_blank(),axis.ticks=element_blank(),axis.title.x=element_blank(),axis.title.y=element_blank(),legend.position="none",panel.border=element_blank(),panel.grid.major=element_blank(),panel.grid.minor=element_blank()))
}

saveGIF(lapply(1:nreps,plot.cells), movie.name='illumina_cells.gif',interval=0.01,ani.width=960,ani.height=960)

nrows <- 20
ncols <- 50

bases <- data.frame(base=sample(c('A','C','G','T'),nrows*ncols,replace=TRUE),x=as.numeric(sapply(1:nrows,rep,ncols)),y=1:ncols)
bases$base <- factor(bases$base,levels=c('A','C','G','T',' '))
bases2 <- bases
bases2$y <- bases2$y + 50
bases2$base=' '
bases <- rbind(bases,bases2)

plot.bases <- function(n) {
	print(ggplot(bases,aes(y,x,color=base,shape=as.character(base))) + geom_point(size=8) + scale_color_manual(values=palette) + scale_shape_manual(values=c('A'='A','C'='C','G'='G','T'='T',' '='')) + scale_x_continuous(limits=c(-19,0) + n) + theme_bw(base_size = 16, base_family = "mono") + theme(panel.background = element_rect(fill = "#000000",colour = NA), plot.background = element_rect(fill = "#000000",colour = NA), axis.line=element_blank(),axis.text.x=element_blank(),axis.text.y=element_blank(),axis.ticks=element_blank(),axis.title.x=element_blank(),axis.title.y=element_blank(),legend.position="none",panel.border=element_blank(),panel.grid.major=element_blank(),panel.grid.minor=element_blank()))
}

saveGIF(lapply(0:70,plot.bases), movie.name='illumina_calls.gif',interval=0.01,ani.width=960,ani.height=960)