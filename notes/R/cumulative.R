
x = seq(-3,3,by=0.01);
y = dnorm(x)

png(filename="cummulativeDist.png")
plot(x,y,type="l",xaxt="n",ylab="p",main="Cumulative Normal Probability Distribution")
axis(side=1, at=seq(-3,3,by=0.5), labels=NA)

x1 = seq(-3,-0.5,by=0.01);
y1 = dnorm(x1)
polygon(c(x1,x1[length(x1)]), c(y1, y1[1]), col='grey')
lines(c(-0.5,-0.5),c(dnorm(-0.5),-0.1),type="l")
#text(-0.5,-0.75,labels="z*")
text(-0.5,-0.03,"z*",xpd=NA)
dev.off()


png(filename="tcummulativeDist.png")
x = seq(-3,3,by=0.01);
y = dt(x,df=10)
plot(x,y,type="l",xaxt="n",ylab="p",main="Cumulative t Probability Distribution")
axis(side=1, at=seq(-3,3,by=0.5), labels=NA)

x1 = seq(0.8,3,by=0.01);
y1 = dt(x1,df=10)
polygon(c(x1,x1[length(x1)]), c(y1[length(y1)],y1), col='grey')
lines(c(0.8,0.8),c(dt(0.8,df=10),-0.1),type="l")
#text(-0.5,-0.75,labels="z*")
text(0.8,-0.03,"t*",xpd=NA)
dev.off()

