#4��10��

x<-paste(rep(c("A", 2:10, "j", "Q", "K"), 4)) 			#paste() : �ٿ��ֱ�
x								#�ֻ��� 2���� 5�� ������
outer(1:6, 1:6) 						#outer() : ������, �຤�ͷ� ��İ��� �����
dice<-as.vector(outer(1:6, 1:6, FUN=paste))	 		#as.vector() : ����� ���ͷ� �����

paste(1:6, 1:6, seq="") 					#������� ����, �⺻ �����ڴ� ����
paste(1:6) 							#���͸� �ϳ��� ���
date() 								#���� ��¥, �ð�
paste(1:6, collapse="") 					#�ϳ��� ���ͷ� ���鶧 �����ھ��� �����

#�ǽ�
sample(c("H", "T"), 10, rep=T, prob=c(2,1)) 			#Ȯ���� �˾Ƽ� ������ ������

#6.12
cards<-paste(rep(c("A", 2:10, "j", "Q", "K"), 4), c("H, "D", "S", "C"))
sample(cards, 5)

#����� ���� �Լ�
1+2; 1+3 							#��� ������ ���
{1+2; 1+3}	 						#������ �������� ���

F2C <- function(F) (F-32)*5/9 					#�Լ� �����
F2C(80)
C2F <- function(C) C*9/5+32
C2F(24)
C2F <- function(C) {
  F<-C*9/5+32
  paste(F, "degree in Fahrenheit")
}
C2F(24)

circle<-function(R) {
  circumf<-2*pi*R
  area<-R*R*pi
  cat("Circum ference = ", circumf, "\nArea = ", area, "\n")
}
								#cat() : ����, ���ڵ� ���� �״�� ���
circle(3)

circle<-function(R=1) {
  circumf<-2*pi*R
  area<-R*R*pi
  cat("Circum ference = ", circumf, "\nArea = ", area, "\n")
}
circle() 							#R=1�� �ڵ�����

ff <- function(x, y=length(z)){z <- x; y}
ff(1:10) 							#10���
