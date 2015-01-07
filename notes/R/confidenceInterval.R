

N = 40;
samples = 10;
x = c();
yPos = c();
frame()
plot.window(xlim=c(-1,1),ylim=c(-4,N))
axis(3,at=seq(-1,1,by=.1),labels=seq(-1,1,by=.1),outer=FALSE)
title("Confidence Interval",xlab=paste("Sample mean - n =",samples))
points(c(0,0),c(-1,N),type="l",lty=1);
#par(ask = TRUE)

for (i in 1:N) {
  x = c(mean(rnorm(samples)),x);
  yPos = c(N-i,yPos);
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
  text(-0.8,pos,paste("p =",p),col=color);
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
