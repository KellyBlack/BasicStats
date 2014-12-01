


plotStudentizedArea = function(df1,df2,cutoff)
    {
        ratio <- 1.5
        x <- seq(0.01,cutoff*ratio,by=cutoff/1000);
        y <- (ptukey(x+0.01,df1,df2)-ptukey(x-0.01,df1,df2))/0.02
        x <- c(0,x)
        y <- c(0,y)
        plot(x,y,type="l",lwd=2,xlab='Studentized Range',ylab='p')
        
        x1 <- seq(0.01,cutoff,by=cutoff/1000);
        y1 <- (ptukey(x1+0.01,df1,df2)-ptukey(x1-0.01,df1,df2))/0.02
        x2 <- seq(cutoff,cutoff*ratio,by=cutoff/1000);
        y2 <- (ptukey(x2+0.01,df1,df2)-ptukey(x2-0.01,df1,df2))/0.02

        x1 <- c(0,x)
        y1 <- c(0,y)

        polygon(c(x1[1],x1,x1[length(x1)],x1[1]), c(0,y1,0,0), col='dodgerblue2')
        polygon(c(x2[1],x2,x2[length(x2)],x2[1]), c(0.0,y2,0.0,0.0), col='indianred3')
    }

