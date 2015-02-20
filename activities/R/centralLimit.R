#library(sm)
N <- 200
trials <- 25;
cat('Will print out ',trials,' trials\n');
v <- c(1:N)
dev <- c(1:trials);
means <- c(1:trials);

par(ask = TRUE)

for (i in 1:trials) {
 for (j in 1:N) {
    #v[j] <- mean(rpois(i,3))
    #v[j] <- mean(rbinom(i,5,.3))
    #v[j] <- mean(rgamma(i,6,3))
    v[j] <- mean(runif(i,0,1));
 }

 dev[i] <- sd(v);
 means[i] <- mean(v);

 hist(v,xlim=c(0,1),ylim=c(0,65),main='200 Random Variables Evenly Distributed')
 cat (i,' Samples\n')
 #pause()
}


print('Means\n')
plot(1:trials,means,
     main='Means of the Trials',
     ylim=c(.25,.75),
     xlab='Trial',ylab='Mean')

print('Standard Deviations\n');
plot(1:trials,dev,
     main='Standard Deviations of the Trials',
     xlab='Trial',ylab='Standard Deviation');
