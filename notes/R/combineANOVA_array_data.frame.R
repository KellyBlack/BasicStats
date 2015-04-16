
combine <- function(d)
{
	theVals <- numeric(0)
    theTypes <- character(0)
    for(n in names(d))
        {
            theVals <- c(theVals,d[[n]])
            theTypes <- c(theTypes,rep(n,length(d[[n]])))
        }
    data.frame(val=theVals,t=theTypes)
}

a <- read.csv('allison.csv')
n <- combine(a)

