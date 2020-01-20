#4��12��

library(UsingR)
a<-1:10
result<-data.frame(2:11)
c(a,result)
lst<-list(a, result)
lst
str(lst)

search()
n <- 3
cube <- function(n) {
  sq <- function() n*n
  n*sq()
}
cube(2) 				#8

n <- 3
cube <- function(n) {
  sq <- function(n) n*n
  n*sq(3)
}
cube(2) 				#18

n <- 3
cube <- function() {
  sq <- function() n*n
  n*sq()
}
cube() 					#27

fix(cube) 				#save

#�ǽ�
histqq.f<-function(x) {
  oldpar <- par(mfrow=c(1,2))		#oldpar �Ҵ��� ����� �Լ� �ۿ��� ��Ƽ�������� ������� ����
  hist(x)
  qqnorm(x)
  qqline(x)
}
x<-rnorm(100)
histqq.f(x)

x<-rnorm(100)
qqnorm(x)
qqline(x)
x<-rexp(100)
qqnorm(x)
qqline(x)

abs.x <- function(x) {
  if (x<0) -x else x
}
abs.x(-2) 				#����O
abs.x(c(1,-2,3)) 			#����X > ifelse ���

6%%5 #1, ������ ������

#7.6
for (n in 1:50) {
  results = numeric() #��ġ�� ����
  mu = 10; sigma = mu
  for(i in 1:200) {
    X <- rexp(200, 1/mu)
    results[i] = (mean(X)-mu)/(sigma/sqrt(n))
  }
  hist(results)
  Sys.sleep(.5) 					#0.5�� ������
}
							#���� ���Ժ����� ��������� ���
