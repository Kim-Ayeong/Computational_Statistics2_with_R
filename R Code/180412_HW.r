#4��12�� ����

#Fibonacci ���� �ǽ�����

#n��° �Ǻ���ġ ���� �� ��� �Լ�
fibonacci <- function(n) {
  if(n==1 || n==2) return(1)
  return (fibonacci(n-2)+fibonacci(n-1))
}
fibonacci(4)

#m���� ũ�� �Ǵ� �� ��ȣ ��� �Լ�
fibo_index <- function(m) {
  i <- 1
  repeat {
    if(fibonacci(i)>m) return(i)
    i <- i+1
  }
}
fibo_index(3)

#�ǵ��

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