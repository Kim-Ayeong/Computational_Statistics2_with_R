#4��24��

#Example1 : Homedata
data(homedata)
?homedata
head(homedata)
plot(homedata) 							#������ ���

simple.eda <- function (x)  { 
  old.par <- par(no.readonly = TRUE) 				#save all the previous par settings 
  on.exit(par(old.par)) 					#�Լ��� ������ �� ����, �Լ��� �����X, ������ ���ุ!
  par(mfrow = c(1, 3)) 
  hist(x); rug(x) 
  boxplot(x); rug(x, side = 2); title("boxplot") 
  qqnorm(x); qqline(x)  					#������ ���� �����
}

ff <- function() {
  oldpar <- par(mfrow = c(1,3))
  x <- 1 
  x
  par(oldpar)  							#��Ƽ������ ����, �����
}
ff() 								#���X

ff <- function() {
  oldpar <- par(mfrow = c(1,3))
  on.exit(par(oldpar))
  x <- 1 
  x  								#�����
}  
ff() 								#1 ���, on.exit(par(oldpar))�� �Լ��� �� ���� �� ���

simple.eda(homedata[[1]])					#�� �׸� ���, ������ ������ �� ����
								#������ �׸� �� = ��밪, ���� ������� ��밪���� ŭ
#[Q] 1970��� 2000���� ���Ϸ��� ���?	
value.diff <- homedata$y2000 ? homedata$y1970 			#30�⵿���� ���� ��ȭ��
simple.eda(value.diff)  					#�����ʲ����� ������

#Example2 : CEO Salaries
data(exec.pay)
str(exec.pay)
sum(exec.pay == 0)  						#����(���޷� �̸�)�� 0�� ��� = 3��, ���ܰ��̹Ƿ� ����
log.pay <- log10(exec.pay[exec.pay >0])
simple.eda(log.pay)

#Example3 : Taxi Time at EWR
#taxi in time : ���� �� �ӹ��� �ð�
#taxi out time : �̷� �� Ȱ�ַο� �ӹ��� �ð�
data(ewr)
names(ewr)
airnames = names(ewr) 						#store them for later
ewr.actual = ewr[,3:10] 					#get the important columns
boxplot(ewr.actual)
boxplot(ewr.actual)

#[Q] �װ��纰�� ���̷� ��~���� ������ ��~���� �����Ϸ��� ���? 
range(ewr[,3:10]) 								#min=5.7, max=40.4
par(mfrow=c(2,4))
attach(ewr)
for(i in 3:10) boxplot(ewr[,i] ~inorout, ylim = c(5,41), main=airnames[i]) 	#���� ����, �̹� ���Ͷ� as.factor �ʿ�X
detach(ewr)
par(mfrow=c(1,1)) 								#ȯ��
#ylim�� ���ִ� ���� : in out ������ y������ ���� ��Ű�� ����

#Example4 : Various Distributions
#Symmetric distributions : ��Ī����, �������� ������ ������ �β���. size�� 2�� �ּ�
#Skewed : ���Ī ����
old.par <- par(mfrow=c(2,3), bty="n", cex=1.1)
#bty="n" : �ڽ��� �׸��� ����
#cex=1.1 : ���� ũ�⸦ �ڵ������� 1.1��

#�ǽ�
#8.7
Q. ���ͷ��� ���Ժ����� ���������� ���ƶ�
(ù���� �������� �����Ƿ� ���ͷ� ����, ��°������ ���ͷ� �߻��Ѵ�!) 
data(dowdata)
str(dowdata)
X <- dowdata$Close
Z <- log(X[2:443]/X[1:442]) 						#for�� �� �ʿ�X, ���ͷ��� �ڿ��α�
simple.eda(Z) 								#���ͷ��� ���Ժ��� ������ �ȴٰ� ���� �� �ִ�.
length(Z)
length(X)
Y <- as.numeric(Z[2:442]/Z[1:441] > 0)
table(Y)
prop.test(sum(Y),441)  							#������ ��ɾ �����ϰ� ������ �� �־�� ��

#�ŷڱ��� ���� ��, �� prop.test ����