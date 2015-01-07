

x = c(1,2,3,4,5)
y = c(2,3,3,5,4)
fit = lm(y~x)

png("scatterLR-raw.png",width=1024,height=1024)
plot(x,y,main='Linear Regression',xlab='x',ylab='y',cex=2.5,lwd=3)
dev.off()

png("scatterLR-line.png",width=1024,height=1024)
plot(x,y,main='Linear Regression',xlab='x',ylab='y',cex=2.5,lwd=3)
fit = lm(y~x)
abline(fit,lwd=2,col=4)
dev.off()

png("scatterLR-preResidual.png",width=1024,height=1024)
slope     = fit$coefficients[[2]]
intercept = fit$coefficients[[1]]


plot(x,y,main='Linear Regression',xlab='x',ylab='y',cex=2.5,lwd=3)
abline(fit,lwd=2,col=4)

slope     = fit$coefficients[[2]]
intercept = fit$coefficients[[1]]

trial = 3
for(trial in 1:length(x))
{
  yVal = slope*x[trial]+intercept
  points(c(x[trial],x[trial]),c(y[trial],yVal),type='l',col=2,lwd=3,lty=1)
}
dev.off()



png("scatterLR-Residual.png",width=1024,height=1024)
plot(x,y,main='Linear Regression',xlab='x',ylab='y',cex=2.5,lwd=3)
abline(fit,lwd=2,col=4)

slope     = fit$coefficients[[2]]
intercept = fit$coefficients[[1]]

trial = 3
for(trial in 1:length(x))
{
  yVal = slope*x[trial]+intercept
  points(c(x[trial],x[trial]),c(y[trial],yVal),type='l',col=2,lwd=3,lty=1)
  if((trial==2)||(trial==5))
    {
      text(x[trial],(y[trial]+yVal)*0.5,paste('Residual',trial),adj=c(1.1,2.5))
    }
  else
    {
      text(x[trial],(y[trial]+yVal)*0.5,paste('Residual',trial),adj=c(-0.1,0.0))
    }
}
dev.off()
