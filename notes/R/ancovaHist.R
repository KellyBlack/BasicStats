
bonding <- read.csv('../data/dental.txt')

png('../img/coePeriodontal.png',width=1024,heigh=1024,bg = "transparent")
opar <- par(lwd=4.5)
hist(bonding$STRENGTH[bonding$DRESSING=="coe"],
     main="Strength of Coe Dressing",xlab="Dressing Strength kN/mm",
     axes=FALSE)
axis(2,lwd=4.0)  # at=, labels=, pos=, lty=, col=, las=, tck=, ...
axis(1,lwd=4.0)
dev.off()

       
