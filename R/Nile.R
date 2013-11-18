

# Read the data
nile = read.csv(file="fig12.8-nile-river-flowrate.txt",sep=",",head=TRUE);

names(nile)
# Get a summary of the data
summary(nile$Jan)
summary(nile$Feb)

# plot histograms of the data
hist(nile$Jan,xlab="Flow Rate",main="Aswan Dam Flowrates for January")
hist(nile$Feb,xlab="Flow Rate",main="Aswan Dam Flowrates for February")

# Plot a scatterplot of the data
plot(nile$Jan,nile$Feb,
     main="Comparison of Aswan High Flow Dates",xlab="January",ylab="February")

# Determine the best straight line file
fit = lm(nile$Feb ~ nile$Jan)

# Add the straight line to the plot
abline(fit)
fit
