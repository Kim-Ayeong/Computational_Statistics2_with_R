#3��29��

library(UsingR)
data(mtcars)
str(mtcars)
boxplot(mpg~am) 				#����
boxplot(mpg~am, data=mtcars) 			#����X
attach(mtcars)
boxplot(mpg[am==0], mpg[am==1])
detach(mtcars)

?iris
head(iris)
str(iris)
stripchart(iris[, 1:2]) 			#�����͸� ������ ǥ��
plot(iris[, 1], iris[, 3]) 			#iris �������� 1, 3�� ������
cor(iris[, 1], iris[, 3])	 		#���л�
pairs(iris) 					#������ ���
pairs(iris[, 1:4])

curve(x^2, from=-2, to=2)
curve(exp(-x), 0, 10)
x<-seq(0, 4, by=.1)
plot(x, exp(-x), type="l")
curve(0.5*exp(-0.5*x), 0, 4, add=TRUE, col="blue", lty=2) 	#lty:�� Ÿ��

#�ǽ�
dnorm(0) 							#ǥ�����Ժ������� Ȯ���е��Լ� ���ϱ�
1/sqrt(2*pi)
dnorm(seq(0, 2, by=0.1))

#�ǽ� 4.1
#https://blog.naver.com/dash1216/140064797139 ����
evaluation<-scan() 						#�߸��� ������ �Է�
1 3 5 1~
getwd()
dfr<-read.table("P4_1.txt")
names(dfr)<-c("name", "Q1", "Q2", "Q3")
head(dfr)
attach(dfr) 							#1
table(Q1); table(Q2)
table(Q1, Q2) 							#2
barplot(table(Q2, Q3)) 						#3
barplot(table(Q3, Q2))
barplot(table(Q3, Q2), beside=T)
barplot(table(Q2, Q3), beside=T) 				#4

curve(1/x, 1e-8, 10, ylim=c(0, 100))
curve(x^2, 1e-8, 10, ylim=c(0, 100), add=T)