#5��8��

shapiro.test(rchisq(100,5))

freq = c(22,21,22,27,22,36) 					#toss a die 150 times
								#��밪=25������ �شܰ� 36�� ��Ÿ�� �� �ִ�.
probs = c(1,1,1,1,1,1)/6 					#or use rep(1/6,6)
chisq.test(freq,p=probs) 					#df=5

yesbelt = c(12813,647,359,42) 					#����ǥ �ڷ�� ���� ����
nobelt = c(65963,4000,2642,303)
chisq.test(data.frame(yesbelt,nobelt)) 				#or chisq.test(rbind(yesbelt,nobelt))
								#��� ���� �ٲ� ��

#statistical significance ����� ����, practical significance �ǿ��� ���� ����

#homogeneity test : ������ ����
die1<-sample(1:6, 60, rep=TRUE) 				#�ֻ��� �����ϰ� 60�� ������
die2<-sample(1:6, 60, rep=TRUE, prob=1:6) 			#�ֻ��� �������� �ʰ� 60�� ������
								#1:6 = (1:6)/21 > Ȯ���� 1 �ڵ� ����
obj<-chisq.test(rbind(table(die1), table(die2)))		#rbind() : ������������ �����
str(obj)
obj$p.value

#�ǽ�

a <- sample(c("H","T"),100,prob=(1:2)/3,rep=T)
b <- sample(c("H","T"),100,prob=(2:1)/3,rep=T)
#�ո��� ���� Ȯ���� ���� �������� �����ϰ� ���� > ������ ����
chisq.test(rbind(table(a),table(b))) 				#�̿� O, ������ ������ ��
chisq.test(table(a,b)) 						#�̿� X, ������ ������ ��
chisq.test(a,b) 						#�̿� X, ������ ������ �� < �ϳ��� ���������� �� �Ӽ��� ������ ����

#12.1 ������ ����

#12.2 ������ ����
r1 = c(67, 10, 5)
r2 = c(42, 6, 5)
r3 = c(75, 8, 4)
r4 = c(56, 4, 6)
r5 = c(57, 15, 1)
chisq.test(rbind(r1, r2, r3, r4, r5))

#12.3
x<-c(53, 22, 49)
(pr<- c(5, 3, 4)/12)				#(��ȣ �� ����)�� �ٷ� ���
chisq.test(x, p=pr)

#12.4
library(UsingR)
data(UCBAdmissions) 				#read in the dataset
?ftable
x = ftable(UCBAdmissions) 			#flatten
x 						#what is there
str(UCBAdmissions)
ftable(UCBAdmissions)
ftable(UCBAdmissions, row.vars="Gender", col.vars="Admit")

