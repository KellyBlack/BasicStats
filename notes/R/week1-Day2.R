
# Notes for week 1 day 2.

# Define a function to make a Pareto Chart
pareto = function(d,sortOrder,sortAtAll,theTitle)
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
      main=theTitle)
    lines(b,cumsum(freq))
    points(b,cumsum(freq))
    
  }


# define the data
d = c('B','B','B','A','A','C','D')


png(file='paretoQuizW1D2-a.png')
pareto(d,FALSE,TRUE,'Pareto Diagram of the Data')
dev.off()


png(file='paretoQuizW1D2-b.png')
pareto(d,TRUE,TRUE,'Pareto Diagram of the Data')
dev.off()

png(file='paretoQuizW1D2-c.png')
pareto(d,FALSE,FALSE,'Pareto Diagram of the Data')
dev.off()




res = c(
  "Health Care",
  "Health Care",
  "Photo",
  "Candy",
  "Health Care",
  "Cosmetics",
  "Health Care",
  "Candy",
  "Health Care",
  "Cosmetics",
  "Cosmetics",
  "Health Care",
  "Photo"
)

f = table(res)

png(file='drugStoreBarPlot.png')
barplot(f,ylab="Number of Sales",main="Drug Store Visits by Department")
dev.off()

png(file="drugStorePareto.png")
pareto(res,TRUE,TRUE,"Drug Store Visits by Department")
dev.off()

