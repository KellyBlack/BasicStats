

N = 100;
left = -3.5;
right = 3.5;
x = seq(left,right,by=(right-left)/N);
y = dt(x,df=20);

png("tdistExample.png")
plot(x,y,type="l",xlab='t (df=20)',ylab='p',main="The t-distribution",
     axes=TRUE,col=2);
dev.off()


png("tdistComparison.png")
plot(x,y,type="l",xlab='t (df=20)',ylab='p',main="The t-distribution",
     axes=TRUE,col=2);
points(x,dnorm(x),type='l',col=1,lty=c(2))
legend(1.3,0.4,c('t distribution','normal'),col=c(2,1),lty=c(1,2))
dev.off()


png("tdistTable.png")
plot(x,y,xaxt="n",type="l",xlab='t (df=20)',ylab='p',
     main="The t-distribution",
     axes=TRUE,col=2);
a = 1.5
x1 = seq(a,right,by=(right-a)/N)
y1 = dt(x1,df=20)
polygon(c(x1[1],x1), c(0,y1), col='grey')
points(x1,y1,col=2,type='l')

axisMarks = c(seq(-3,round(a),by=1),a,seq(round(a)+1,3,by=1))
axisLabels = paste(c(seq(-3,round(a),by=1),"a",seq(round(a)+1,3,by=1)))
axisMarks = c(0,a)
axisLabels = c("0","a")
axis(side=1, at=axisMarks, labels=axisLabels)
dev.off()
