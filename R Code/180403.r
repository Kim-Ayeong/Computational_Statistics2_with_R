#4��3��

library(UsingR)
data(iris)
head(iris[,c(1,3)])
?PlantGrowth
PlantGrowth
tail(PlantGrowth, 3)
unstack(PlantGrowth, weight~group)
a<-unstack(PlantGrowth, weight~group)
stack(a) 					#�����̸��� ������
b<-stack(a)
names(b)<-c("weight", "group") 			#�����̸� ����
head(b)
stack(a, select=c(trt1, trt2)) 			#�ش� ���� ��Ź
stack(a, select=c(2, 3))
?chips 						#�ݵ�ü �ڷ�
data(chips)
chips 						#�����̸� �� ù��° ���ڴ� Ĩ�� ����, �ι�° ���ڴ� �������
rep(c(1,2), 5) 					#1212121212
rep(c(1,2), c(5,5)) 				#1111122222 �ٸ� ����

#�ǽ�
a<-stack(chips)
value<-a[,1]
x<-rep(1:2, c(120, 120))
y<-rep(rep(1:4, rep(30, 4)), 2)
data.frame(x,y,value)

attach(mtcars)
table(am, gear, cyl)
boxplot(mpg~am+cyl)

eng <- rnorm(100, mean=70, sd=8)
math <- rnorm(100, mean=60, sd=12)
kor <- 0.5*eng + 0.5*rnorm(100, mean=80, sd=5)
plot(kor, eng, ylab="eng/math")
points(kor, math, pch=2, col="blue")

data(iris)
pairs(iris[,1:4])
plot(iris[[1]], iris[[2]], col=2) 		#1����, 2����, 3�ʷ�, 4�Ķ�
example(pairs) 					#�پ��� ������ �˾ƺ���

#5.2
dfr<-data.frame(x,y,value)
boxplot(y~x+y, data=dfr) 			#stack ������
boxplot(chips) 					#unstack ������
						#boxplot(chips[[1]],~,chips[[8]]) �� ����


