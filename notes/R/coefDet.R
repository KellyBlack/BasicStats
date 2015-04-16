
x = c(-1,0,1,2)
y = c(-1,1,2,4)
ybar = mean(y)
fit = lm(y~x)
slope     = fit$coefficients[[2]]
intercept = fit$coefficients[[1]]
par(ps=12)

png("coefDetRaw.png")
plot(x,y,cex=2.5,lwd=3,xlab='x',ylab='y',main='Example')
dev.off()

png("coefDetLine.png")
plot(x,y,cex=2.5,lwd=3,xlab='x',ylab='y',main='Example')
abline(fit,cex=2,lwd=2.5,col=2)
dev.off()



y1    = c(-1,1,3.5,3)
fit1  = lm(y~x)
ybar1 = mean(y)
slope1     = fit$coefficients[[2]]
intercept1 = fit$coefficients[[1]]

png("coefDetIdea.png")

# Plot the points
plot(x,y1,cex=2.5,lwd=3,xlab='x',ylab='y',main='Coefficient of Determination')

# Plot the y bar line (horizontal line)
points(c(x[1],x[4]),c(ybar1,ybar1),type='l',col=4,lwd=2.5,lty=2)
text(-1.0,ybar1,expression(bar(y)),cex=2,adj=c(0.0,-0.5),col=4)

# Plot the best fit line
abline(fit1,cex=2,lwd=2.5,col=2)

# Plot the line marking the total deviation
points(c(x[trial],x[trial])-0.7,c(ybar1,(y1[trial]*.4+ybar1*.6)),type='l',lwd=2.5,lty=1,col=1)
points(c(x[trial],x[trial])-0.7,c((y1[trial]*.6+ybar1*.4),y1[trial]),type='l',lwd=2.5,lty=1,col=1)
points(c(x[trial]-.8,x[trial]),c(y1[trial],y1[trial]),type='l',lwd=2.5,lty=2,col=1)

#for(trial in 1:length(x))
{
  trial = 3
  yVal = slope1*x[trial]+intercept1
  points(c(x[trial],x[trial]),c(y1[trial],yVal),type='l',col=4,lwd=3,lty=1)
  points(c(x[trial],x[trial]),c(ybar1,yVal),type='l',col=6,lwd=3,lty=1)
  text(x[trial],(ybar1+yVal)*0.5,"Explained\nDeviation",cex=1.25,adj=c(-0.4,0.5),col=6)
  text(x[trial],(y1[trial]+yVal)*0.5,"Unexplained\nDeviation",cex=1.25,adj=c(-0.4,0.5),col=4)
  text(x[trial],(y1[trial]+ybar1)*0.5,"Total Deviation",cex=1.25,adj=c(1.4,0.75),col=9)
}

# Plot the lines for the explained and unexplained deviation.
points(c(x[trial],x[trial]+0.7),c(yVal,yVal),type='l',col=6,lwd=2.5,lty=2)
points(c(x[trial],x[trial]+0.7),c(y1[trial],y1[trial]),type='l',col=4,lwd=2.5,lty=2)

dev.off()


png('coefDetClickerQuiz.png')
xc = c(0,1,2,3)
yc = c(3,1.5,3,0)
fitc = lm(yc~xc)
plot(xc,yc,xlab='x',ylab='y',main='Clicker Quiz',cex=2.5,lwd=3,col=2)
abline(fitc,cex=2,lwd=2.4,col=4)
dev.off()
