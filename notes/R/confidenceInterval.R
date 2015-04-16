

N = 40;
samples = 10;
x = c();
yPos = c();
frame()
op <- par(mar = c(5.1,4.1,4.1,2.1) + 1.0)
plot.window(xlim=c(-1,1),ylim=c(-4.8,N+0.5))
axis(3,at=seq(-1,1,by=.1),labels=seq(-1,1,by=.1),outer=FALSE)
title(expression(paste("Confidence Interval, ",mu,"=0")),xlab=paste("Sample mean of",samples,"samples"))
points(c(0,0),c(-1,N+2.0),type="l",lty=1);
#par(ask = TRUE)

for (i in 1:N) {
  x = c(mean(rnorm(samples)),x);
  yPos = c(N-i+0.5,yPos);
  points(x[1],yPos[1])
  pause = readline("Hit enter to continue: ");
}


pos = -1.1;
color = 0;
cat("Error bars for confidence intervals.\n")
for (p in c(0.8,0.9,0.95,0.98)) {
  pause = readline("Hit enter to continue: ");
  error = qnorm(p+(1.0-p)/2.0)/sqrt(samples)
  color = color + 1
  text(-0.8,1.2*pos-0.25,paste("p =",p),col=color);
  pos = pos - 1.3;
  for (i in 1:N) {
    points(c(x[i]-error,x[i]+error),c(yPos[i],yPos[i]),type="l",lty=1,col=color);
    points(c(x[i]-error,x[i]-error),c(yPos[i]-0.2,yPos[i]+0.2),type="l",lty=1,col=color);
    points(c(x[i]+error,x[i]+error),c(yPos[i]-0.2,yPos[i]+0.2),type="l",lty=1,col=color);
    #points(c( error, error),c(pos+0.1,N),type="l",lty=3,col=color);
    #text(-error,pos,p)
    #text( error,pos,p)
  }
}
