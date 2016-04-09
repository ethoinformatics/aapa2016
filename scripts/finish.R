#!/usr/bin/env Rscript

setwd('~/Downloads')

# write.table(round(read.table('step5.txt',header=FALSE,sep='\t',row.names=NULL),2),file='step6.txt',col.names=FALSE,row.names=FALSE)

x = round(read.table('step5.txt',header=FALSE,sep='\t',row.names=NULL),2)
y = split(x,1:nrow(x))
z = do.call(c,lapply(y,function(x) paste0('[',x[[1]], ',' ,x[[2]],']')))
names(z) = NULL

write(paste0('[',paste(z,collapse=','),']'),file='results.txt')