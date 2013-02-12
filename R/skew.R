
#rbinom

#rnorm

# rlnorm
# rexp
# rchisq
# rweibull
# rf

#rm(xleft)
if( !exists("xleft") ) { # use rm(xleft) to reset.
  #xleft = rchisq(300,8)
  xleft = rweibull(300,50)
}

png('leftSkew.png')
h = hist(xleft,main="Histogram Example - Left Skew",xlab="x")
dev.off()

png('leftSkewAnnotated.png')
h = hist(xleft,main="Histogram Example - Left Skew",xlab="x")
width = (max(xleft)-min(xleft))/length(h$breaks)
meanx = mean(xleft)
medx  = median(xleft)
points(c(meanx,meanx),c(0,max(h$counts)),col="red",type="l")
text(meanx-0.6*width,max(h$counts)*0.85,"Mean",col="red")
points(c(medx,medx),  c(0,max(h$counts)),col="blue",type="l")
text(meanx+1*width,max(h$counts)*0.75,"Median",col="blue")
dev.off()


#rm(xright)
if( !exists("xright") ) { # use rm(xright) to reset.
  xright = rchisq(300,8)
}

png('rightSkew.png')
h = hist(xright,main="Histogram Example - Right Skew",xlab="x")
dev.off()

png('rightSkewAnnotated.png')
h = hist(xright,main="Histogram Example - Right Skew",xlab="x")
width = (max(xright)-min(xright))/length(h$breaks)
meanx = mean(xright)
medx  = median(xright)
points(c(meanx,meanx),c(0,max(h$counts)),col="red",type="l")
text(meanx+0.9*width,max(h$counts)*0.85,"Mean",col="red")
points(c(medx,medx),  c(0,max(h$counts)),col="blue",type="l")
text(meanx-1.4*width,max(h$counts)*0.95,"Median",col="blue")
dev.off()


#rm(xsymm)
if( !exists("xsymm") ) { # use rm(xsymm) to reset.
  xsymm = rnorm(300,8,2.0)
}

png('symmetric.png')
h = hist(xsymm,main="Histogram Example - Symmetric",xlab="x")
dev.off()

png('symmetricAnnotated.png')
h = hist(xsymm,main="Histogram Example - Symmetric",xlab="x")
width = (max(xsymm)-min(xsymm))/length(h$breaks)
meanx = mean(xsymm)
medx  = median(xsymm)
points(c(meanx,meanx),c(0,max(h$counts)),col="red",type="l")
text(meanx+0.9*width,max(h$counts)*0.85,"Mean",col="red")
points(c(medx,medx),  c(0,max(h$counts)),col="blue",type="l")
text(meanx-1.4*width,max(h$counts)*0.95,"Median",col="blue")
dev.off()

