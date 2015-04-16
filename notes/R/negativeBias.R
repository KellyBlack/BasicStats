


x = rgamma(10,0.5,rate=3);
x = rexp(10,rate=10);

png('negativeBias.png')
stripchart(x,xlab='Production',axes=FALSE,pch=16,cex=2)
points(mean(x),1,pch=15,cex=3,col=3)
text(mean(x),0.95,expression(mu),col=3,cex=2)
dev.off()

