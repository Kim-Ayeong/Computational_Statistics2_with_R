#4��3�� ����

#iris data �ǽ� ����

library(UsingR, lib.loc="C:/Users/��Ȳ��")

dfr<-iris
head(dfr)
str(dfr)
attach(iris)
search()

mean(Sepal.Length) 				#���
mean(Sepal.Width)
mean(Petal.Length)
mean(Petal.Width)

sd(Sepal.Length) 				#ǥ������
sd(Sepal.Width)
sd(Petal.Length)
sd(Petal.Width)

cv1<-sd(Sepal.Length)/mean(Sepal.Length) 					#�������
cv2<-sd(Sepal.Width)/mean(Sepal.Width)
cv3<-sd(Petal.Length)/mean(Petal.Length)
cv4<-sd(Petal.Width)/mean(Petal.Width)

cor(dfr[,1:4]) 									#������

pairs(iris[,1:4], pch=rep(20,3)[iris$Species],col=c(2,3,4)[iris$Species]) 	#������


#�ǵ��

data(iris)
mean.vec <- apply(iris[, 1:4], 2, mean)
sd.vec <- apply(iris[, 1:4], 2, sd)
sd.vec/mean.vec 								#�������
cor(iris[,1:4]) 								#������
pairs(iris[,1:4], pch=rep(20,3)[iris$Species], col=c(2,3,4)[iris$Species]) 	#������