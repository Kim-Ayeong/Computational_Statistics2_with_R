#6��5��

f<-function(x) {
	x+1
}
fix(f)  						#Rstudio �Լ� ������

#�ǽ�����

prob1 <- function(n) {
	x<-integer(n)
	for(i in 1:n) {
		u<-runif(2)
		u1<-min(u)
		u2<-max(u)
		if(max(u1, u2-u1, 1-u2)<0.5) x[i]=1	#���� �� ���� 0.5���� ���� ��� �ﰢ�� ����
		else x[i]=0
	}
	phat <- mean(x)
	LL <- phat - 2*sqrt(phat*(1-phat)/n)  		#�ŷڱ���
	UL <- phat + 2*sqrt(phat*(1-phat)/n)
	cat(phat, " (", LL, ", ", UL, ")\n")
}
prob1(1000)

#�� ���� ���
prob2 <- function(n) {
	u<-matrix(runif(2*n), ncol=2)
	u1<-pmin(u[,1], u[,2])  #pmax, pmin : ���� �� ���Ҵ� ����
	u2<-pmax(u[,1], u[,2])
	x <- ifelse(pmax(u1, u2-u1, 1-u2)<0.5, 1, 0)  	#���� �� ���� 0.5���� ���� ��� �ﰢ�� ����
	phat <- mean(x)
	LL <- phat - 2*sqrt(phat*(1-phat)/n)  		#�ŷڱ���
	UL <- phat + 2*sqrt(phat*(1-phat)/n)
	cat(phat, " (", LL, ", ", UL, ")\n")
}
prob2(1000)
