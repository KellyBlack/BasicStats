n1 <- data.frame(type=rep('N',times=6),t=rnorm(6,mean=4.2,sd=2.5))
p1 <- data.frame(type=rep('P',times=5),t=rnorm(5,mean=1.7,sd=1.1))
j1 <- data.frame(type=rep('J',times=7),t=rnorm(7,mean=2.4,sd=1.8))
c <- rbind(n1,p1,j1)
b <- c

index <- 1
for (j in sample(length(c$type)))
{
    b$type[index] <- c$type[j]
    b$t[index]    <- trunc(10*c$t[j])/10
    index <- index + 1
    print(noquote(paste(c$type[j],'&',b$t[j],"&")))
}

b <- data.frame(
    type=c('N','P','N','N','P','N','J','P','J','P','J','P','N','N','J','J','J','J'),
    t=c(3.5,2.3,6.6,3.2,6.6,0.5,5.2,2.2,3.0,5.2,0.5,4.1,2.5,1.1,4.1,6.2,1.6,3.1))

b <- data.frame(
    type=c('N','P','N','N','P','N','J','P','J','P','J','P','N','N','J','J','J','J'),
    t=c(1.1,0.5,6.6,3.2,2.5,5.0,5.2,3.5,4.1,2.4,3.5,1.6,6.2,3.1,2.2,3.0,2.3,2.9))

index <- 1
for (j in 1:length(b$type))
{
    print(noquote(paste(b$type[index],'&',b$t[index],"&")))
    index <- index + 1
}


indices <- tapply(b$t,b$type)
print(noquote(paste(b$t[indices==1])))
print(noquote(paste(b$t[indices==2])))
print(noquote(paste(b$t[indices==3])))

n <- b$t[indices==2]
p <- b$t[indices==3]
j <- b$t[indices==1]

summary(n)
mean(n)
sd(n)
png('/tmp/noPreFilingTime.png',width=1024,height=1024,bg = "transparent")
opar <- par(lwd=4.5)
hist(n,main='Time in Weeks For Bankruptcy - No Pre-Filing',axes=FALSE)
axis(2,lwd=4.0)
axis(1,lwd=4.0)
dev.off()

summary(p)
mean(p)
sd(p)
png('/tmp/prePackagedTime.png',width=1024,height=1024,bg = "transparent")
opar <- par(lwd=4.5)
hist(p,main='Time in Weeks For Bankruptcy - Prepackaged',axes=FALSE)
axis(2,lwd=4.0)
axis(1,lwd=4.0)
dev.off()


summary(j)
mean(j)
sd(j)
png('/tmp/jointExchangeTime.png',width=1024,height=1024,bg = "transparent")
opar <- par(lwd=4.5)
hist(j,main='Time in Weeks For Bankruptcy - Joint Exchange',axes=FALSE)
axis(2,lwd=4.0)
axis(1,lwd=4.0)
dev.off()


png('/tmp/bankruptcyBoxplots.png',width=1024,height=1024,bg = "transparent")
opar <- par(lwd=4.5)
boxplot(b$t ~ b$type,main="Bankruptcy Times",ylab='Time in Weeks')
dev.off()


