#6월5일

f<-function(x) {
	x+1
}
fix(f)  						#Rstudio 함수 편집기

#실습문제

prob1 <- function(n) {
	x<-integer(n)
	for(i in 1:n) {
		u<-runif(2)
		u1<-min(u)
		u2<-max(u)
		if(max(u1, u2-u1, 1-u2)<0.5) x[i]=1	#제일 긴 변이 0.5보다 작을 경우 삼각형 형셩
		else x[i]=0
	}
	phat <- mean(x)
	LL <- phat - 2*sqrt(phat*(1-phat)/n)  		#신뢰구간
	UL <- phat + 2*sqrt(phat*(1-phat)/n)
	cat(phat, " (", LL, ", ", UL, ")\n")
}
prob1(1000)

#더 좋은 방법
prob2 <- function(n) {
	u<-matrix(runif(2*n), ncol=2)
	u1<-pmin(u[,1], u[,2])  #pmax, pmin : 벡터 각 원소다 적용
	u2<-pmax(u[,1], u[,2])
	x <- ifelse(pmax(u1, u2-u1, 1-u2)<0.5, 1, 0)  	#제일 긴 변이 0.5보다 작을 경우 삼각형 형셩
	phat <- mean(x)
	LL <- phat - 2*sqrt(phat*(1-phat)/n)  		#신뢰구간
	UL <- phat + 2*sqrt(phat*(1-phat)/n)
	cat(phat, " (", LL, ", ", UL, ")\n")
}
prob2(1000)
