#4월12일 과제

#Fibonacci 수열 실습문제

#n번째 피보나치 수열 항 출력 함수
fibonacci <- function(n) {
  if(n==1 || n==2) return(1)
  return (fibonacci(n-2)+fibonacci(n-1))
}
fibonacci(4)

#m보다 크게 되는 항 번호 출력 함수
fibo_index <- function(m) {
  i <- 1
  repeat {
    if(fibonacci(i)>m) return(i)
    i <- i+1
  }
}
fibo_index(3)

#피드백

fibo1<-function(n) {
  x<-integer(n)
  x[1]=x[2]=1
  for(i in 3:n) x[i]<-x[i-2]+x[i-1]
  x
}
fibo1(10)

fibo2<-function(m) {
  x=integer()
  x[1]=x[2]=1
  i=3
  repeat {
   x[i]=x[i-2]+x[i-1]
   if(x[i]>m) return(i)
   i=i+1
  }
}
fibo2(3)