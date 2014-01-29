source('normalArea.R')

#print("What is the mean? ")
#mean = scan(what=double(0),nmax=1,multi.line = FALSE)
#print(paste("The mean is ",mean))

#print("What is the std dev? ")
#stdDev = scan(what=double(0),nmax=1,multi.line = FALSE)
#print(paste("The standard deviation is ",stdDev))

#print("What is the cut off ")
#cutoff = scan(what=double(0),nmax=1,multi.line = FALSE)
#print(paste("The cut off is ",cutoff))


png('topStockPicks.png',width=1024,height=1024)
mean = 0.5
stdDev = 4.4
cutoff = qnorm(0.75)*stdDev+mean
plotNormalArea(mean,stdDev,cutoff)
text(mean-stdDev,0.5*dnorm(mean-stdDev,mean=mean,sd=stdDev),expression(paste("area=",0.75)))
text(mean+1.3*stdDev,0.25*dnorm(mean-stdDev,mean=mean,sd=stdDev),expression(paste("area=",0.25)))
title('Stock Portfolios',xlab='Price Gain',ylab='p')
points(c(cutoff,cutoff),c(-0.01,0.0),type='l',xpd=TRUE)
text(cutoff,-0.012,expression("x*"),xpd=TRUE)
dev.off()


png('normalRVMean3.png',width=1024,height=1024)
mean = 3.0
stdDev = 4.5
cutoff = 0
height = 0.5*dnorm(cutoff-0.2*stdDev,mean=mean,sd=stdDev)
plotNormalArea(mean,stdDev,cutoff)
text(cutoff-0.5*stdDev,height,expression(alpha))
text(cutoff+1.2*stdDev,height,expression(1-alpha))
title('Random Variable',xlab='X',ylab='p')
#points(c(cutoff,cutoff),c(-0.01,0.0),type='l',xpd=TRUE)
#text(cutoff,-0.012,expression("x*"),xpd=TRUE)
dev.off()


mean = 0.5
stdDev = 4.4
cutoff = qnorm(0.75)*stdDev+mean
plotNormalArea(mean,stdDev,cutoff)
text(mean-stdDev,0.5*dnorm(mean-stdDev,mean=mean,sd=stdDev),expression(paste("area=",0.75)))
text(mean+1.3*stdDev,0.25*dnorm(mean-stdDev,mean=mean,sd=stdDev),expression(paste("area=",0.25)))
title('Stock Portfolios',xlab='Price Gain',ylab='p')
points(c(cutoff,cutoff),c(-0.01,0.0),type='l',xpd=TRUE)
text(cutoff,-0.012,expression("x*"),xpd=TRUE)
