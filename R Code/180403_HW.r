#4월3일 과제

#iris data 실습 문제

library(UsingR, lib.loc="C:/Users/김황규")

dfr<-iris
head(dfr)
str(dfr)
attach(iris)
search()

mean(Sepal.Length) 				#평균
mean(Sepal.Width)
mean(Petal.Length)
mean(Petal.Width)

sd(Sepal.Length) 				#표준편차
sd(Sepal.Width)
sd(Petal.Length)
sd(Petal.Width)

cv1<-sd(Sepal.Length)/mean(Sepal.Length) 					#변동계수
cv2<-sd(Sepal.Width)/mean(Sepal.Width)
cv3<-sd(Petal.Length)/mean(Petal.Length)
cv4<-sd(Petal.Width)/mean(Petal.Width)

cor(dfr[,1:4]) 									#상관계수

pairs(iris[,1:4], pch=rep(20,3)[iris$Species],col=c(2,3,4)[iris$Species]) 	#산점도


#피드백

data(iris)
mean.vec <- apply(iris[, 1:4], 2, mean)
sd.vec <- apply(iris[, 1:4], 2, sd)
sd.vec/mean.vec 								#변동계수
cor(iris[,1:4]) 								#상관계수
pairs(iris[,1:4], pch=rep(20,3)[iris$Species], col=c(2,3,4)[iris$Species]) 	#산점도