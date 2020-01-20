#Ch. 6 문제풀이

#6.1
Q. Generate 10 random numbers from a uniform distribution on [0,10].
Use R to find the maximum and minimumvalues.x


x<-runif(10, min=0, max=10)
min(x); max(x) 	#또는
range(x)

#6.2
Q. Generate 10 random normal numbers with mean 5 and standard deviation 5 (normal(5,5)).
How many are less than 0? (Use R)


x<-rnorm(10, mean=5, sd=5)
sum(x<0)

#6.3 
Q. Generate 100 random normal numbers with mean 100 and standard deviation 10.
How many are 2 standard deviations from the mean (smaller than 80 or bigger than 120)?


m=100; s=10
x<-rnorm(10, mean=m, sd=s)
sum(x-2*s<x & x<x+2*s)

#6.4
Q. Toss a fair coin 50 times (using R). How many heads do you have?

x<-sample(c("H", "T"), 10, replace = T)
sum(x=="H")

#6.5 
Q. Roll a “die” 100 times. How many 6’s did you see?

x<-sample(1:6, 100, replace = T)
sum(x==6)

#6.6
Q. Select 6 numbers from a lottery containing 49 balls.
What is the largest number? What is the smallest? Answer these using R.

x<-sample(1:49, 6, replace=F)
max(x); min(x)

#6.7 
Q. For normal(0,1), find a number z* solving P(Z ≤ z*) = .05 (use qnorm).

qnorm(0.05) 									#-1.644854 > -1.645
qnorm(0.95) 									#1.644854 > 1.645

#6.8 
Q. For normal(0,1), find a number z* solving P(z* ≤ Z ≤ z*) = .05 (use qnorm and symmetry).

z<-qnorm(0.525)
z
pnorm(-1*z)									#0.475
pnorm(z) 									#0.525

#6.9 
Q. How much area (probability) is to the right of 1.5 for a normal(0,2)?

pnorm(1.5, 0, 2, lower.tail=F) 							#0.2266274

#6.10
Q. Make a histogram of 100 exponential numbers with mean 10.
Estimate the median. Is it more or less than the mean?

x<-rexp(100, 1/10)
hist(x); median(x)

#6.11
Q. Can you figure out what this R command does?
> rnorm(5,mean=0,sd=1:5)

평균이 0이고, 표준편차가 1~5인 정규분포에서 난수 5개(각 1개씩)를 생성하시오

#6.12
Q. Use R to pick 5 cards from a deck of 52. Did you get a pair or better?
Repeat until you do. How long did it take?

cards<-paste(rep(c("A", 2:10, "j", "Q", "K"), 4), c("H, "D", "S", "C"))
sample(cards, 5)

#Binomial 슬라이드 Q.
Figure 27: p=.25일 때 size=5, 15, 50의 그림
Q. 이론적 확률을 나타내는 선이 막대의 중심에 오게 하려면?

n <- 5
p <- 0.25
x <- rbinom(100,n,p)
hist(x, prob=T, breaks=seq(-0.5 , n+0.5 , 1))
xvals <- 0:n
points(xvals,dbinom(xvals,n,p),type="h",lwd=3) 
points(xvals,dbinom(xvals,n,p),type="p",lwd=3) 

