#4��5��

library(UsingR)

x=runif(100) # get the random numbers
hist(x,prob=TRUE,col=gray(.9),main="U[0,1]") 		#gray:������, main:����
curve(dunif(x,0,1),add=T) 				#r:����, d:�е�

rbinom(100, 1, 0.5) 					#�������� ����
rbinom(1, 100, 0.5) 					#���� 100�� ������ ������ 1�� ����
rbinom(100, 100, 0.5) 					#����100�� ������ ������ 100�� ����
dbinom(5, 10, 0.5) 					#������ 10�� ������ �� �ո��� 5�� ���� Ȯ��
dbinom(0:10, 10, 0.5) 					#������ 10�� ������ �� �ո��� 0:10�� ���� Ȯ��
sum(dbinom(0:10, 10, 0.5)) 				#1 ���

?rhyper
rhyper(100, 4, 6, 3)
?dhyper
dhyper(3, 4, 6, 3)
set.seed(1) 						#���� ���� ����
rhyper(100, 4, 6, 3)

dbinom(0:5, 5, 0.3)
pnorm(c(1.645, 1.96)) #0.95, 0.975
pnorm(c(1, 2, 3))
pbinom(0:5, 5, 0.3)
qnorm(0.975) 
x<-rnorm(1000)
quantile(x) 						#ǥ��������
quantile(x, c(0.1, 0.5, 0.9))
quantile(1:10, 0.9)

x <- rnorm(10)
(x-mean(x))/sd(x)		 			#ǥ��ȭ ����
scale(x) 						#ǥ��ȭ ����, ��Ʈ���� ����
as.vector(scale(x)) 					#���� �������� �ٲٱ�

pairs(iris[,1:4], col=as.numeric(iris$Species)) 	#�������� �ٸ� ������ ��Ÿ����

