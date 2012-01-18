
# Notes for week 1 day 2.

# Define a function to make a Pareto Chart
pareto = function(d,sortOrder,sortAtAll)
  {
    d = table(d)
    
    if(sortAtAll)
      {
        freq = sort(d,decreasing=sortOrder)
      }
    else
      {
        freq = d
      }
    
    b = barplot(freq,xlab='Numbers',ylab='Frequency',
      ylim=c(0,1.1*sum(freq)),names=names(freq),
      main='Pareto Diagram of the Data')
    lines(b,cumsum(freq))
    points(b,cumsum(freq))
    
  }


# define the data
d = c('B','B','B','A','A','C','D')


png(file='paretoQuizW1D2-a.png')
pareto(d,FALSE,TRUE)
dev.off()


png(file='paretoQuizW1D2-b.png')
pareto(d,TRUE,TRUE)
dev.off()

png(file='paretoQuizW1D2-c.png')
pareto(d,FALSE,FALSE)
dev.off()



