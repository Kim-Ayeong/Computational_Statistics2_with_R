#6��14��

weekdays(as.Date("2018-6-14"))  		#����
months(as.Date("2018-6-14"))  			#��
quarters(as.Date("2018-6-14"))  		#�б�

a<-c(1:10)
a[2]%%2  					#�ݺ��� �ʿ�
a%%2  						#�ݺ��� �ʿ�X

#���1
kospi200 <- read.csv("kospi200.csv")
zz.dd <- as.Date(as.character(kospi200$date), format="%Y%m%d")
n <- nrow(kospi200)
rr <- log(kospi200$KOSPI200[2:n]/kospi200$KOSPI200[1:(n-1)])
dd <- zz.dd[2:n]
zz <- as.integer(substring(dd, 9, 10))
dd.exp <- (weekdays(dd)=="�����") & (zz>7) & (zz<15)
x <- abs(rr[dd.exp])
y <- abs(rr[!dd.exp])
boxplot(x, y, names=c("�ɼǸ�����", "�񸸱���"), main="���ͷ�����")
t.test(x, y, alternative="greater")  						#���Ժ��� ����
wilcox.test(x, y, alternative="greater") 					#���Ժ��� ���� �ʿ�X

#���2
kospi200 <- read.csv("kospi200.csv", header=TRUE)
second.thr <- function(date.vec) {
	dd <- as.numeric(substring(date.vec, 9, 10))
	vec1 <- dd>7 & dd<15
	vec2 <- weekdays(date.vec)=="�����"
	vec1 & vec2
}
attach(kospi200)
N <- length(KOSPI200)
rr <- log(KOSPI200[2:N]/KOSPI200[1:(n-1)])
tf.vec <- second.thr(as.Date(as.character(date[2:N]), "%Y%m%d"))
c(mean(abs(rr[tf.vec])), mean(abs(rr[!tf.vec])))
t.test(abs(rr[tf.vec]), abs(rr[!tf.vec]), alternative="greater")
wilcox.test(abs(rr[tf.vec]), abs(rr[!tf.vec]), alternative="greater")


