#5월3일 과제

Fibo <- function(e) {
	x<-integer()
	x[1] <- x[2] <- 1
	grate = (1+sqrt(5))/2
	i = 3
	repeat {
		x[i] <- x[i-2] + x[i-1]
		if(abs(x[i]/x[i-1]-grate) < e) break
		i = i+1
	}
 	plot(4:i, x[4:i]/x[3:(i-1)],	ylab = "x[i] / x[i-1] in Fibonacci sequence", type="b")
 	abline(h = grate, lty=2, col="red")
}
Fibo(1E-5)
Fibo(1E-6)


