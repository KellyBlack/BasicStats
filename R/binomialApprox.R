N = 40;
p = 0.25;

coarse = seq(0,N,by=1)
D = dbinom(coarse,N,p)

fine = seq(0,N,by=0.1);
normal = dnorm(fine,mean=N*p,sd=sqrt(N*p*(1-p)))


png(file="binomialN40.png")
plot(N*p,0,xlim=c(1,N),ylim=c(0,max(normal)+0.02),xlab="Number of Successes",
     ylab="Probability",main="Approximation of the Binomial Distribution",sub="N=40,p=0.25")
#bpoints = barplot(D,xlim=c(1,N),ylim=c(0,max(normal)+0.02),add=TRUE,axisnames=FALSE)

rect(coarse-0.5,coarse*0,coarse+0.5,D)
text(14,0.14,"Probabilities for the binomial distribution",adj=c(0,0))
dev.off()

png(file="binomialApproximationN40.png")
plot(N*p,0,xlim=c(1,N),ylim=c(0,max(normal)+0.02),xlab="Number of Successes",
     ylab="Probability",main="Approximation of the Binomial Distribution",sub="N=40,p=0.25")
#bpoints = barplot(D,xlim=c(1,N),ylim=c(0,max(normal)+0.02),add=TRUE,axisnames=FALSE)
rect(coarse-0.5,coarse*0,coarse+0.5,D)
lines(fine,normal,type="l",xlim=c(1,N),ylim=c(0,max(normal)+0.02))
text(14,0.14,"Binomial and Normal distributions",adj=c(0,0))
dev.off()
