#3��20��

alist<-list(name="Kim",eye=1.2)
alist$name 						#������Ʈ
alist$eye						#������Ʈ
alist[[1]] 						#1��° ������Ʈ ��Ҹ� ���
alist[1] 						#1��° ������Ʈ �̸�+��� ���, ���� ���X

dfr<-data.frame(c1=c("Kim","Lee"), c2=c(170,175))
#������ ���ٹ�
dfr[,2] 						#2��
dfr[[2]] 						#2��
dfr[2,2] 						#2��2��
dfr[,'c2']						#c2��
#����Ʈ���ٹ�
dfr[2]							#2��° ������Ʈ ���
dfr[2][2] 						#����
dfr[[2]][2]						#2��2��
dfr$c2							#c2������Ʈ

library(UsingR)
search() 						#������2�� UsingR ��� Ȯ��
str(babies)
data(babies) 						#babies �纻�� ����� �۾�
ls() 
babies$race
head(babies$race)					#���� 6�ٸ� ���
babies$race<=5 						#T/F�� ���
babies$race[babies$race<=5]<-1				#�� ����

head(airquality)
str(airquality)
mean(airquality$����) 				#NA ���
mean(airquality$����,na.rm=T) 			#������ ����, �⺻��:na.rn=False
apply(airquality[,1:4],2,mean) 				#(������������, 1:�� 2:��, ������ �Լ�, (�Լ�����))
apply(airquality[,1:4],2,mean,na.rm=T)

#�ǽ�����
a==NA 							#������X
a=="NA" 						#������X
is.na(a) 						#������O
?babies							#������ ���� ã��, wt:999, ht:99, ���� ����
range(babies$wt)
range(babies$ht)
babies$ht[babies$ht==99]<-NA
mean(babies$wt)
mean(babies$wt, na.rm=T)				#������ ������ ����, �ٸ��� ������ ����
mean(babies$wt, na.rm=T)*28.35/1000
mean(babies$ht, na.rm=T)*2.54/100