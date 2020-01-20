#6월7일 과제

#대수의 법칙

N <- 10000
X <- rbinom(N, 1, 0.1)
Y <- rcauchy(N)
f <- function(x) {xbar<-cumsum(x)/(1:N)}
old.par <- par(mfrow=c(2,2))
plot(f(X)); plot(f(Y))
X <- rbinom(N, 1, 0.1)
Y <- rcauchy(N)
plot(f(X)); plot(f(Y))

#피드백

N <- 10000
f <- function(n, index) {
	if(index==1) X <- rbinom(n, 1, 0.1)
	if(index==2) X <- rcauchy(n)
	xbar <- cumsum(X)/(1:n)
}
old.par <- par(mfrow=c(2,2))
plot(f(N, 1))
plot(f(N, 2))
plot(f(N, 1))
plot(f(N, 2))



