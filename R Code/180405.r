#4월5일

library(UsingR)

x=runif(100) # get the random numbers
hist(x,prob=TRUE,col=gray(.9),main="U[0,1]") 		#gray:농도조절, main:제목
curve(dunif(x,0,1),add=T) 				#r:난수, d:밀도

rbinom(100, 1, 0.5) 					#베르누이 시행
rbinom(1, 100, 0.5) 					#동전 100번 던지는 실험을 1번 시행
rbinom(100, 100, 0.5) 					#동전100번 던지는 실험을 100번 시행
dbinom(5, 10, 0.5) 					#동전을 10번 던졌을 때 앞면이 5번 나올 확률
dbinom(0:10, 10, 0.5) 					#동전을 10번 던졌을 때 앞면이 0:10번 나올 확률
sum(dbinom(0:10, 10, 0.5)) 				#1 출력

?rhyper
rhyper(100, 4, 6, 3)
?dhyper
dhyper(3, 4, 6, 3)
set.seed(1) 						#난수 새로 생성
rhyper(100, 4, 6, 3)

dbinom(0:5, 5, 0.3)
pnorm(c(1.645, 1.96)) #0.95, 0.975
pnorm(c(1, 2, 3))
pbinom(0:5, 5, 0.3)
qnorm(0.975) 
x<-rnorm(1000)
quantile(x) 						#표본분위수
quantile(x, c(0.1, 0.5, 0.9))
quantile(1:10, 0.9)

x <- rnorm(10)
(x-mean(x))/sd(x)		 			#표준화 과정
scale(x) 						#표준화 과정, 매트릭스 형태
as.vector(scale(x)) 					#벡터 형식으로 바꾸기

pairs(iris[,1:4], col=as.numeric(iris$Species)) 	#종류별로 다른 색으로 나타내기

