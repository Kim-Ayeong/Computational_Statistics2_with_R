#6��7��

library(UsingR)
data(iris)
str(iris)
class(as.matrix(iris[,1:4]))
class((iris[,1:4]))

A <- matrix(c(1,2,3,4), nrow=2)
A
t(A)
t(A)*A    						#����� ��X
t(A) %*% A   						#����� ��O
A <- matrix(runif(1000*1000), nrow=1000)	
A
det(A)   						#Inf
solve(A) 						#�����
solve(A) %*% A   					#�������
eigen(A)  						#������

n = 1000
B = matrix(runif(n*n), ncol=n)
A = t(B) %*% B 						#create a positive definite matrix A
b = runif(n)
cholesky <- function(A, b) {				#Solve Ax = b using the Cholesky decomposition of A
	T = chol(A)   					#A = TT', T is a lower triangular matrix
	y = backsolve(T, b, transpose=TRUE) 		#TT'x = b, y = T'x
	return(backsolve(T, y))  			#solve T'x = y for x, and return it
}
?system.time
system.time(cholesky(A, b))
system.time(solve(A) %*% b) 				#x = A^{-1}b, solve directly using the inverse of A

#�ǽ�

a <- scan()
A <- matrix(a, nrow=3, byrow=T)
b <- c(0, 4, 2)
solve(A, b)  						#���1

#�ذ� ���� ���
A[2,]<-c(1, 1, 1)
b[2]<-1
solve(A)  						#����

#����� ��Ģ < for(while, repeat) ���� �ʰ� �غ���

cumsum(1:10) 						#�����Լ�
N <- 10000
x <- rbinom(N, 1, 0.1)
x <- rcauchy(N)  					#�ڽ� ���� 10000�� ����

#���1 > Best!
noloop <- function(x) {	xbar <- cumsum(x)/(1:N) }

#���2 > No Good!
withloop1 <- function(x, N) {  			
	xbar <- numeric(N)
	for(i in 1:N) {
		xbar[i] <- mean(x[1:i])
	}
}

#���3 > Not bad!
withloop2 <- function(x, N) {  			
	xbar <- numeric(N)
	xbar[1] = x[1]
	for(i in 2:N) {
		xbar[i] <- (xbar[i-1]*(i-1)+x[i])/n
	}
}
system.time(noloop(x))
system.time(withloop1(x, N))
system.time(withloop2(x, N))

