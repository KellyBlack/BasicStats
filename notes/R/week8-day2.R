
left = -4;
right = 4;
x = seq(left,right,by=0.02)

stdDev = (right-left)/5
p = dnorm(x,mean=0.5*(right+left),sd=stdDev)

png("week8Dist.png")
plot(x,p,type='l',xlab='x',ylab='probability',
     axes=FALSE,ylim=c(0,max(p)*1.05),
     frame.plot=FALSE)

axis(1,at=seq(left,right,by=(right-left)/4),
     pos = c((left+right)/2,0),
     labels=c(expression(paste(mu,"-2",sigma)),
       expression(paste(mu,"-",sigma)),expression(mu),
       expression(paste(mu,"+",sigma)),expression(paste(mu,"+2",sigma))))

axis(2)
dev.off()

lower = par("usr")
center = -stdDev/3.0
error = stdDev/2.0;

png("week8DistSample.png")
plot(x,p,type='l',xlab='x',ylab='probability',
     axes=FALSE,ylim=c(0,max(p)*1.05),
     frame.plot=FALSE)

axis(1,at=seq(left,right,by=(right-left)/4),
     pos = c((left+right)/2,0),
     labels=c(expression(paste(mu,"-2",sigma)),
       expression(paste(mu,"-",sigma)),expression(mu),
       expression(paste(mu,"+",sigma)),expression(paste(mu,"+2",sigma))))

axis(2)

points(center,0.0,col=2,pch=16,cex=1.4)
dev.off()

png("week8DistConfInterval.png")
plot(x,p,type='l',xlab='x',ylab='probability',
     axes=FALSE,ylim=c(0,max(p)*1.05),
     frame.plot=FALSE)

axis(1,at=seq(left,right,by=(right-left)/4),
     pos = c((left+right)/2,0),
     labels=c(expression(paste(mu,"-2",sigma)),
       expression(paste(mu,"-",sigma)),expression(mu),
       expression(paste(mu,"+",sigma)),expression(paste(mu,"+2",sigma))))

axis(2)

points(center,0.0,col=2,pch=16,cex=1.4)

points(c(center-error,center+error),c(0,0),col=2,type='l',lwd=3)
text(center-error,0,"(",col=2)
text(center+error,0,")",col=2)
dev.off()
