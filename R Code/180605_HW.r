#6월5일 과제

prob3 <- function(n) {
	u<-matrix(runif(2*n), ncol=2)
	u1<-pmin(u[,1], u[,2])
	u2<-pmax(u[,1], u[,2])
	mline <- pmax(u1, u2-u1, 1-u2)
	num <- 1/(2+sqrt(2))*sqrt(2) 					#직각삼각형일 때 길이, 0.4142
	x <- ifelse((mline<0.5) & (mline>num), 1, 0)    		#삼각형 & 둔각삼각형 조건
	phat <- mean(x)
	LL <- phat - 2*sqrt(phat*(1-phat)/n)  				#신뢰구간
	UL <- phat + 2*sqrt(phat*(1-phat)/n)
	cat(phat, " (", LL, ", ", UL, ")\n")
}
prob3(100000)
