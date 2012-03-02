

N = 100;
left = -3.5;
right = 3.5;
x = seq(left,right,by=(right-left)/N);
y = dnorm(x);

leftBound = -1.4;
rightBound = 1.4;

xl = seq(left,leftBound,by=(leftBound-left)/N*2.0);
yl = dnorm(xl);

xr = seq(rightBound,right,by=(right-rightBound)/N*2.0);
yr = dnorm(xr);


png('confidenceInterval.png')
plot(x,y,type='l',xlab='sample mean',ylab='p',main="Error Calculation",axes=FALSE);
polygon(c(xl,xl[length(xl)],xl[1]),c(yl,yl[1],yl[1]),col='grey')
polygon(c(xr,xr[length(xr)],xr[1]),c(yr,yr[length(yr)],yr[length(yr)]),col='grey')
points(c(leftBound,rightBound),c(yl[1],yl[1]),type='l')
text((leftBound+left)*0.4,0.02,expression(paste(alpha,'/2')),col=2)
text((rightBound+right)*0.4,0.02,expression(paste(alpha,'/2')),col=2)
text(0,0.2,expression(paste('1-',alpha)))

axis(1,at=c(left,leftBound,0.0,rightBound,right),
     pos = c((left+right)/2,0),
     labels=c('',
       expression(paste(mu,"-Error")),expression(mu),
       expression(paste(mu,"+Error")),''))

axis(2)


arrows(rightBound*0.25,0.02,0,0.02,length=0.06,angle=50)
arrows(rightBound*0.75,0.02,rightBound,0.02,length=0.06,angle=50)
text(rightBound*0.5,0.02,'Error')

arrows(leftBound*0.25,0.02,0,0.02,length=0.06,angle=50)
arrows(leftBound*0.75,0.02,leftBound,0.02,length=0.06,angle=50)
text(leftBound*0.5,0.02,'-Error')

points(c(0,0),c(yl[1],0.03),type='l')
dev.off()
