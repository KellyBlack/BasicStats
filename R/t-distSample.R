
right = 5;
left = -right;
x = seq(left,right,by=0.02)

p = dnorm(x,mean=0,sd=1)

png("normalCompare.png",width=1024,height=1024)
plot(x,p,type='l',xlab='x',ylab='probability',
     main='Normal Distribution',lwd=3,
     axes=FALSE,ylim=c(0,max(p)*1.05),
     frame.plot=FALSE)

axis(1,at=seq(-4,4,by=1),
     pos = c((left+right)/2,0),
     labels=c("-4","-3","-2","-1","0","1","2","3","4"),lwd=3)

legend(1.4,y=.3,legend=c('Normal'),col=c(1),lty=c(1),lwd=3)

axis(2,,lwd=3)
dev.off()



png("tDistCompareDF3.png",width=1024,height=1024)
plot(x,p,type='l',xlab='x',ylab='probability',
     main='Normal Distribution',lwd=3,
     axes=FALSE,ylim=c(0,max(p)*1.05),
     frame.plot=FALSE)

points(x,dt(x,df=3),type='l',col=2,lwd=3,lty=2)

axis(1,at=seq(-4,4,by=1),
     pos = c((left+right)/2,0),lwd=3,
     labels=c("-4","-3","-2","-1","0","1","2","3","4"))

legend(1.4,y=.3,legend=c('Normal','t, df=3'),col=c(1,2),lty=c(1,2),lwd=3)

axis(2,lwd=3)
dev.off()


png("tDistCompareDF6.png",width=1024,height=1024)
plot(x,p,type='l',xlab='x',ylab='probability',
     main='Normal Distribution',lwd=3,
     axes=FALSE,ylim=c(0,max(p)*1.05),
     frame.plot=FALSE)

points(x,dt(x,df=6),type='l',col=2,lty=2,lwd=3)

axis(1,at=seq(-4,4,by=1),
     pos = c((left+right)/2,0),lwd=3,
     labels=c("-4","-3","-2","-1","0","1","2","3","4"))

legend(1.4,y=.3,legend=c('Normal','t, df=6'),col=c(1,2),lty=c(1,2),lwd=3)

axis(2,lwd=3)
dev.off()



png("tDistCompareDF12.png",width=1024,height=1024)
plot(x,p,type='l',xlab='x',ylab='probability',
     main='Normal Distribution',lwd=3,
     axes=FALSE,ylim=c(0,max(p)*1.05),
     frame.plot=FALSE)

points(x,dt(x,df=12),type='l',col=2, lty=2,lwd=3)

axis(1,at=seq(-4,4,by=1),
     pos = c((left+right)/2,0),lwd=3,
     labels=c("-4","-3","-2","-1","0","1","2","3","4"))

legend(1.4,y=.3,legend=c('Normal','t, df=12'),col=c(1,2),lty=c(1,2),lwd=3)

axis(2,lwd=3)
dev.off()


png("tDistCompareDF24.png",width=1024,height=1024)
plot(x,p,type='l',xlab='x',ylab='probability',
     main='Normal Distribution',lwd=3,
     axes=FALSE,ylim=c(0,max(p)*1.05),xlim=c(left,right),
     frame.plot=FALSE)

points(x,dt(x,df=24),type='l',col=2, lty=2,lwd=3)

axis(1,at=seq(-4,4,by=1),
     pos = c((left+right)/2,0),lwd=3,
     labels=c("-4","-3","-2","-1","0","1","2","3","4"))

legend(1.4,y=.3,legend=c('Normal','t, df=23'),col=c(1,2),lty=c(1,2),lwd=3)

axis(2,lwd=3)
dev.off()
