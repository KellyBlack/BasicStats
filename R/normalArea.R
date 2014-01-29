

plotNormalArea = function(mean,stdDev,cutoff)
    {
        x = seq(mean-3.0*stdDev,mean+3.0*stdDev,by=6.0*stdDev/1000);
        plot(x,dnorm(x,mean=mean,sd=stdDev),type="l",xlab='',ylab='',lwd=2)
        
        x1 = seq(mean-3.0*stdDev,cutoff,by=6.0*stdDev/1000);
        y1 = dnorm(x1,mean=mean,sd=stdDev)
        x2 = seq(cutoff,mean+3.0*stdDev,by=6.0*stdDev/1000);
        y2 = dnorm(x2,mean=mean,sd=stdDev)
        polygon(c(x1[1],x1,x1[length(x1)],x1[1]), c(0,y1,0,0), col='dodgerblue2')
        polygon(c(x2[1],x2,x2[length(x2)],x2[1]), c(0.0,y2,0.0,0.0), col='indianred3')
        points(x,dnorm(x,mean=mean,sd=stdDev),type="l",lwd=2)
    }

