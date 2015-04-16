
r <- list(
    s=c("large","large","large","medium","small","medium","medium","small","large","large","small","large","small","large","medium","small","small","medium"),

    t = c("value","value","growth","value","growth","value","growth","growth","growth","value","value","growth","value","value","value","value","value","value"),

    r = c( 5.7 , 14.7 , 40.6 , 18.7 , -24.1, 13.3 , 13.0 , 16.6 , 8.9 , 10.1, 9.1, 20.8, 17.6, 7.9, 13.2, 12.3, 18.0, 22.4)
)


xg <- r$r[r$t=="growth"]
xv <- r$r[r$t=="value"]
length(xg)+length(xv)
length(r$r)

mean(xg)
mean(xv)
mean(r$r)

6*(12.63-13.26)^2 + 12*(13.58-13.26)^2
summary(aov(r$r~r$t))



xs <- r$r[r$s=="small"]
xm <- r$r[r$s=="medium"]
xl <- r$r[r$s=="large"]
length(xs)+length(xm)+length(xl)
length(r$r)

mean(xs)
mean(xm)
mean(xl)
mean(r$r)

6*(8.25-13.26)^2 + 5*(16.12-13.26)^2+7*(15.52857-13.27)^2
summary(aov(r$r~r$s))







