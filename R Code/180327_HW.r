#3월27일 과제

#Figure 7과 같은 그림

?rnorm
norm<-rnorm(100, mean = 1, sd = 1)
norm
?runif
x_min<-1-sqrt(3)
x_min
x_max<-1+sqrt(3)
x_max
unif<-runif(100, min = x_min , max = x_max)
unif
?rexp
expo<-rexp(100, rate = 1)
expo
?par
oldpar<-par(mfcol=c(2,3), mar=rep(2,4))
hist(norm, col="red"); rug(norm)
boxplot(norm, horizontal=T, col="red")
hist(unif, col="yellow"); rug(unif)
boxplot(unif, horizontal=T, col="yellow")
hist(expo, col="blue"); rug(expo)
boxplot(expo, horizontal=T, col="blue")
par(oldpar)