#3��15��

library(UsingR)

getwd() 						#���� �۾���� Ž��, �ش� ��η� csv ���� �ֱ�
dfr<-read.csv("�������2����_�ǽ���2.csv") 		#���� �ҷ�����
dfr
dfr<-setwd(getwd()) 					#�۾���� �ٲٱ�
?read.csv
read.csv("file", header=TRUE,~) 			#1���� ���������� �ڵ� ����, �ƴ� ��� ���Ƿ� ����
head(dfr) 						#ó�� 6��
tail(dfr) 						#������ 6��

read.csv("file", header=TRUE, sep=",") 			#���� ����, �⺻��:header=TRUE, ��ǥ�� ����
write.csv(������, "file") 				#�ܺ� ���Ϸ� �����ϱ�

read.table("file", header=FALSE, sep="") 		#�ؽ�Ʈ ����, �⺻��:header=FALSE > ������ ���� ����, �������� ����
write.table(������, "file") 				#�ܺ� ���Ϸ� �����ϱ�

#�ǽ�����
getwd()
exam<-read.csv("�������2����_�ǽ���2.csv")
str(exam)
write.table(exam, "a.txt")
exam2<-read.table("a.txt", header=TRUE)
exam2

#�ذ��ϰ� ���� ���� > �� �����̵�