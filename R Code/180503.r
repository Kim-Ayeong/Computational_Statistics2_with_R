#5��3��

#���� : prop.test(x, n, p = NULL, alternative = c("two.sided", "less", "greater"), conf.level = 0.95, correct = TRUE)
prop.test(42,100,p=.5) 
prop.test(420,1000,p=.5)				#p���� ������ ī��������, p-value�� �ٸ� > ����� �ٸ� 

#���� : t.test(x,  NULL, alternative = c("two.sided", "less", "greater"), mu=25, conf.level = 0.95, ...)
#mu�� default�� 0
t.test(x,alternative="less",mu=25)
#���� �ڷᰡ ���� ��
xbar=22; s=1.5; n=10; mu=25
t = (xbar-mu)/(s/sqrt(n))
pt(t,df=n-1) 						#6.846828e-05

#�ǽ�����

#10.2 
data(smokyph)
t.test(smokyph$waterph, mu=7)
#�ŷڱ����� 7�� ���Ե��� �ʾұ� ������ �͹����� �Ⱒ, mu=7�� �ƴϴ�.
boxplot(smokyph$waterph) 

#10.3
prop.test(440,900,p=0.5)
#�ŷڱ����� 0.5�� �����ϱ� ������ �͹������� �Ⱒ�� �� ����. 

#log X ~ N(mu, var) �� ��, X ~ log normal(mu, var), �α����Ժ����� ���Ī����.
Y = log X
X = exp (Y)
E(X) = E(exp(Y)) = exp(mu+var/2)

X <- rlnorm(20,0,2)
y <- rlnorm(20,2,2)
boxplot(x,y)
t.test(x,y)
wilcox.test(x,y)

#���� : subset(��ü data frame, ����, select)
subset(ewr, inorout == "out", select=c("AA","NW")) 
#��ü ������ ������ ewr �� inorout == out�� �����͵鸸 (TRUE) ������ ��, ��AA��,��NW���� ����

#11.1
data(homework)
str(homework)
with(homework, boxplot(Private, Public, names=c("Private","Public")))
with(homework, t.test(Private, Public))

#Ȳ�ݺ�
#a:(1-a) = 1:a => a = (1+sqrt(5))/2
