

n = 0:3;
p = c(1/8,3/8,3/8,1/8)

png("probDist3Tosses.png",width=2048,height=2048,pointsize=48)
plot(c(0,0),c(0,p[1]),xlim=c(-0.5,3.5),ylim=c(0,1/2),type='l',lwd=-1,
     xlab="X",ylab="Probability",axes=FALSE,main="Probability of Obtaining Tails After Three Tosses")
axis(2,at=c(0,1/8,2/8,3/8,4/8),labels=c('0','1/8','2/8','3/8','4/8'),col=4,lwd=6)
axis(1,at=c(0:3),labels=c(0:3),col=3,lwd=6)
for(i in 1:length(p))
  {
    points(c(i-1,i-1),c(0,p[i]),type='l',col='2',lwd=8)
  }
dev.off()
