#3��13��

sample(1:100,10) 			#1~100 �߿� ���� 10�� ����
sample(1:10,10,rep=T) 			#���� ����
x<-sample(1:400,20)
x
max(x)
x==max(x) 				#T/F�� ���
which(x==max(x)) 			#���° �ε����ΰ�

cumsum(1:5) 				#������
cummax(1:5) 				#1,2,3,4,5 ���, �����ִ�
cummax(5:1) 				#5,5,5,5,5 ���
pmax(1:5) 				#���� �� �ִ�
diff(1:10) 				#1 ���, ���� �� ����
x<-runif(10) 				#0~1 �� ���� 10�� ����
x
y<-runif(10)
y
pmax(x,y) 				#x, y �� �ִ� ���� ���
x<-de(x) 				#������ ������(������)

#���� 2.2
x<-scan()
x
max(x)
mean(x)
min(x)
x[which(x==24)]<-18
x
mean(x)
sum(x>=20)
sum(x<20)/length(x)
mean(x<20)

#����2.6
x<-c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)
x
mean(x)
log10(x)
(x-4.4)/2.875
max(x)-min(x) 						#��Į��
range(x) 						#����
diff(range(x))

x<-c(80,90,70)
y<-c(85,89,75)
data.frame(x,y)						#������������ ����
data.frame(mid=x,final=y)				#������������ ����
dfr<-data.frame(mid=x,final=y)
dfr
quiz<-c(9,8,7)
dfr<-cbind(dfr,quiz)					#�� �߰�
dfr<-rbind(dfr,c(75,88,8))				#�� �߰�
names(dfr)<-c("mid-term","final","quiz")		#���� �̸� ���̱�
dfr
dfr[2,]							#2��
dfr[,2] 						#2��
dfr[,"final"] 						#final ����
dfr[,-1] 						#1�� ����
mean(dfr[,2])						#2�� ���

#�ǽ�����1
x<-c(57,21, 56, 41, 35, 88, 37, 80, 63, 54)
y<-c(68, NA, 77, 10, 44, 81, 67, 50, 73, 51)
dfr<-data.frame(x,y)
z<-c("No","Yes",rep("No",8))
dfr<-data.frame(z,dfr)
names(dfr)<-c("�߰����","�⸻���","�����")
dfr

#�ֿ䳻��2
str(dfr) 						#������ ���� ����
str(Titanic) 						#Titanic:�̹� �����ϴ� �����ͼ�

#�ǽ�����2
str(airquality)
?airquality
names(airquality)<-c("������","�����","�ٶ�����","�µ�","��","��")
airquality
