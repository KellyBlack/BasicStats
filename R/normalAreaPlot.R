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


#png('generalNormal.png',width=2048,height=2048)
mean = 3.0
stdDev = 1.0
x <- seq(mean-3*stdDev,mean+3*stdDev,by=0.1);
plot(x,dnorm(x,mean=mean,sd=stdDev),type="l",lwd=4,axes=FALSE,col=4,ylab="p")
axis(1,at=c(mean-3*stdDev,mean-stdDev,mean,mean+stdDev,mean+3*stdDev),
     pos = c(mean-3*stdDev,0),lwd=4,cex.axis=2,
     labels=c("",expression(mu-sigma),expression(mu),expression(mu+sigma),""))
axis(2,lwd=4,cex.axis=2)
title('Normal Distribution',xlab='x',ylab='p')
dev.copy(png,filename="generalNormal.png");
dev.off()

#png('generalNormalAnnotated.png',width=2048,height=2048)
plot(x,dnorm(x,mean=mean,sd=stdDev),type="l",lwd=4,axes=FALSE,col=4,ylab="p")
dotLocations <- c(mean-stdDev,mean,mean+stdDev)
points(dotLocations,dnorm(dotLocations,mean=mean,sd=stdDev),cex=2,pch=20,col=2)
for (points in dotLocations)
    {
        points(c(points,points),c(0,dnorm(points,mean=mean,sd=stdDev)),type="l",lty=2,lwd=3)
    }
axis(1,at=c(mean-3*stdDev,mean-stdDev,mean,mean+stdDev,mean+3*stdDev),
     pos = c(mean-3*stdDev,0),lwd=4,
     labels=c("",expression(mu-sigma),expression(mu),expression(mu+sigma),""),cex.axis=2)
axis(2,lwd=4,cex.axis=2)
title('Normal Distribution',xlab='x',ylab='p')
dev.copy(png,filename="generalNormalAnnotated.png");
dev.off()


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
