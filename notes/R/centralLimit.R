#library(sm)
N <- 200
trials <- 25;
cat('Will print out ',trials,' trials\n');
v <- c(1:N)
dev <- double(trials);
means <- double(trials);

choice = readline("Pick a distribution:\n1-uniform\n2-gamma\n3-binomial\n4-Poisson\n ")

par(ask = TRUE)

for (i in 1:trials) {
 for (j in 1:N) {
   if(choice=="1") {
     v[j] <- mean(runif(i,0,1));
   } else if (choice=="2") {
     v[j] <- mean(rgamma(i,14,4))
   } else if (choice=="3") {
     v[j] <- mean(rbinom(i,10,.5))
   } else if (choice=="4") {
     v[j] <- mean(rpois(i,5))
   }
 }

 dev[i] <- sd(v);
 means[i] <- mean(v);


 if(choice=="1") {
     hist(v,xlim=c(0,1),ylim=c(0,65),
          main='200 Trials - Evenly Distributed',
          sub=paste("Sample mean of ",i,"samples per trial"))
     mean = 0.5
 } else if (choice=="2") {
     hist(v,xlim=c(0,7),ylim=c(0,75),
          main='200 Trials - With a Gamma Distribution',
          sub=paste("Sample mean of ",i,"samples per trial"))
     mean = 2
 } else if (choice=="3") {
     hist(v,xlim=c(0,10),ylim=c(0,65),
          main='200 Trials - With a Binomial Distribution',
          sub=paste("Sample mean of ",i,"samples per trial"))
     mean = 3
 } else if (choice=="4") {
     hist(v,xlim=c(0,10),ylim=c(0,85),
          main='200 Trials - With a Poisson Distribution',
          sub=paste("Sample mean of ",i,"samples per trial"))
     mean = 3
 }

 cat (i,' Samples\n')
 #pause()

}


cat('Sample Means - ',mean,'\n')
plot(1:trials,means,
     main='Sample Means of the Trials',
     ylim=c(mean*1.25,mean*.75),
     xlab='Number of Samples',ylab='Sample Mean')

print('Sample Standard Deviations\n');
plot(1:trials,dev,
     main='Sample Standard Deviations of the Trials',
     xlab='Number of Samples',ylab='Sample Standard Deviation');
