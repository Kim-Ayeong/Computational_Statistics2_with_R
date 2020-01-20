#3��22��

library(UsingR)

?mtcars
data(mtcars)
str(mtcars)
plot(wt,mpg) 					#����
search()					#��� Ȯ��
plot(mtcars$wt,mtcars$mpg)	
attach(mtcars) 					#2��° �����ǿ� �ּ� �߰�
search()					#��� Ȯ��
plot(wt,mpg) 					#����X
ls()
ls(pos=2)
detach(mtcars)					#�ּ� ����
detach() 					#2��° ������ �ڵ� ����

with(mtcars, plot(wt,mpg))			#��� �߰� �� �Լ� ����
data(babies)
babies$ht[babies$ht==99]<-NA
with(babies, range(ht))
with(babies, sum(ht==NA)) 			#����
with(babies, sum(is.na(ht))) 			#����X

x<-c("Male", "Female", "Male")
factor(x)					#������ �ڷ� ��ȯ �Լ�
typeof(x) 					#character ���, ������ �״�� ����
typeof(factor(x)) 				#integer ���, ���������� ����
table(x)					#���� ����ǥ
table(factor(x))

xc<-factor(x)	
barplot(xc) 					#���� �׷���, ����
barplot(table(xc)) 				#����X
barplot(table(xc)/length(xc)) 			#����
pie(table(xc))					#�� �׷���
pie(table(xc), col=c("blue", "red"))

wt<-mtcars$wt
summary(wt) 					#��跮 ���
mean(wt)
mean(wt,trim=0.1)				#�������
IQR(wt)						#�������
sd(wt)	

stem(wt)					#�ٱ��� �׸�
stem(wt, scale=2) 				#�� ������
stem(wt, scale=0.5) 				#�� ������
?stem
apropos("stem") 				#��ο��� Ž��
help.search("stem") 				#���� �������� Ž��

hist(wt)					#������׷�
hist(wt, prob=T) 				#Ȯ��
rug(wt) 					#������ ��ġ ǥ��
hist(wt, breaks=5) 				#cut�Լ� ����, ��������=5 
hist(wt, breaks=c(0,3,5,6)) 			#���� ���Ǽ���
rug(wt) 					#�׸��Լ� �� ����

#���� 3.7
pi2000
hist(pi2000)
hist(pi2000, prob=T, breaks=10)
hist(pi2000, prob=T, breaks=seq(-0.5, 9.5, 1))
rug(pi2000)
table(pi2000)/2000 					#��