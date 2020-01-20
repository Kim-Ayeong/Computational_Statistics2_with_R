#4월12일

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

#실습
histqq.f<-function(x) {
  oldpar <- par(mfrow=c(1,2))		#oldpar 할당을 해줘야 함수 밖에서 멀티프레임이 적용되지 않음
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
abs.x(-2) 				#실행O
abs.x(c(1,-2,3)) 			#실행X > ifelse 사용

6%%5 #1, 나머지 연산자

#7.6
for (n in 1:50) {
  results = numeric() #수치형 벡터
  mu = 10; sigma = mu
  for(i in 1:200) {
    X <- rexp(200, 1/mu)
    results[i] = (mean(X)-mu)/(sigma/sqrt(n))
  }
  hist(results)
  Sys.sleep(.5) 					#0.5초 딜레이
}
							#점점 정규분포에 가까워지는 모습
