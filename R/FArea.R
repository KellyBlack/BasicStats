


plotFArea = function(df1,df2,cutoff)
    {
        ratio <- 1.5
        x <- seq(0,cutoff*ratio,by=cutoff/1000);
        plot(x,df(x,df1=df1,df2=df2),type="l",lwd=2,
             xlab='F',ylab='p')
        
        x1 <- seq(0,cutoff,by=cutoff/1000);
        y1 <- df(x1,df1=df1,df2=df2)
        x2 <- seq(cutoff,cutoff*ratio,by=cutoff/1000);
        y2 <- df(x2,df1=df1,df2=df2)
        polygon(c(x1[1],x1,x1[length(x1)],x1[1]), c(0,y1,0,0), col='dodgerblue2')
        polygon(c(x2[1],x2,x2[length(x2)],x2[1]), c(0.0,y2,0.0,0.0), col='indianred3')
        points(x,dnorm(x,mean=mean,sd=stdDev),type="l",lwd=2)
    }

