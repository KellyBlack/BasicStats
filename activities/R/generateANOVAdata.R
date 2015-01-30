
range <- c('20-24','30-34','40-44')
gender <- c('M','F')

meanRange <- array(c(104.6,61.4,
                     108.4,70.0,
                     109.7,64.5),
                   dim=c(length(gender),length(range)))

sdRange <- array(c((123.6-104.6)*sqrt(134)/5/qnorm(0.95),(71.8-61.4)/5*sqrt(133)/qnorm(0.95),
                   (127.6-108.4)*sqrt(120)/5/qnorm(0.95),(75.9-70.0)/5*sqrt(141)/qnorm(0.95),
                   (125.8-109.7)*sqrt(111)/5/qnorm(0.95),(74.9-64.5)/5*sqrt(133)/qnorm(0.95)),
                 dim=c(length(gender),length(range)))


N <- 18
for(lupe in 1:N)
    {
        r <- trunc(runif(1,0.0,length(range)))+1
        g <- trunc(runif(1,0.0,length(gender)))+1
        print(paste(range[r],gender[g],trunc(10*(rnorm(1,mean=meanRange[g,r],sd=sdRange[g,r])))/10,collapse=" & ",sep=" & "))
    }




range <- c('small','medium','large')
gender <- c('value','growth')

meanRange <- array(c(15.0,45,
                     18.0,38.0,
                     12.0,35.0),
                   dim=c(length(gender),length(range)))

sdRange <- array(c(6.0,31.0,
                   5.0,27.0,
                   3.0,19.0),
                 dim=c(length(gender),length(range)))


N <- 9
for(lupe in 1:N)
    {
        r <- trunc(runif(1,0.0,length(range)))+1
        g <- trunc(runif(1,0.0,length(gender)))+1
        firstCol <- paste(range[r],gender[g],trunc(10*(rnorm(1,mean=meanRange[g,r],sd=sdRange[g,r])))/10,collapse=" & ",sep=" & ")

        r <- trunc(runif(1,0.0,length(range)))+1
        g <- trunc(runif(1,0.0,length(gender)))+1
        print(paste(firstCol,range[r],gender[g],trunc(10*(rnorm(1,mean=meanRange[g,r],sd=sdRange[g,r])))/10,collapse=" & ",sep=" & "))
    }

