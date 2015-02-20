#library(sm)
N <- 200
trials <- 25;
cat('Will print out ',trials,' trials\n');
v <- c(1:N)
dev <- c(1:trials);
means <- c(1:trials);

choice = readline("Pick a distribution:\n1-uniform\n2-gamma\n3-binomial\n4-Poisson\n ")

par(ask = TRUE)

for (i in 1:trials) {
 for (j in 1:N) {
   if(choice=="1") {
     v[j] <- mean(runif(i,0,1));
   } else if (choice=="2") {
     v[j] <- mean(rgamma(i,6,3))
   } else if (choice=="3") {
     v[j] <- mean(rbinom(i,10,.3))
   } else if (choice=="4") {
     v[j] <- mean(rpois(i,3))
   }
 }

 dev[i] <- sd(v);
 means[i] <- mean(v);


 if(choice=="1") {
    hist(v,xlim=c(0,1),ylim=c(0,65),main='200 Random Variables Evenly Distributed')
    mean = 0.5
 } else if (choice=="2") {
   hist(v,xlim=c(0,7),ylim=c(0,75),main='200 Random Variables With a Gamma Distribution')
   mean = 2
 } else if (choice=="3") {
   hist(v,xlim=c(0,10),ylim=c(0,65),main='200 Random Variables With a Binomial Distribution')
   mean = 3
 } else if (choice=="4") {
   hist(v,xlim=c(0,10),ylim=c(0,85),main='200 Random Variables With a Poisson Distribution')
   mean = 3
 }

 cat (i,' Samples\n')
 #pause()
}


cat('Means - ',mean,'\n')
plot(1:trials,means,
     main='Means of the Trials',
     ylim=c(mean*1.25,mean*.75),
     xlab='Trial',ylab='Mean')

print('Standard Deviations\n');
plot(1:trials,dev,
     main='Standard Deviations of the Trials',
     xlab='Trial',ylab='Standard Deviation');
