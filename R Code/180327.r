#3��27��

names(Animals)  						  #� ������ �ִ��� �˰� ������
par(mfrow=c(2,1)) 						  #2��1���� ȭ�� ����
oldpar = par() 						   	  #������¸� ����
par(oldpar) 							  #���� ���� ����
hist(x); boxplot(x) 						  #���ÿ� �׸���
density(x)  							  #Ȯ���е��Լ�
lines(density(x))						  #�ڷ��� ������ ������ ���� �� ����
lines(density(x),col = "blue",type="h")
lines(density(x),col = "blue",type="b")

with(mtcars, table(cyl,am)) 					  #mtcars ��� �߰�

table(x,y) 							  #����������ǥ
prop.table(table(x,y)) 						  #��üȮ��
prop.table(table(x,y),2)					  #���� �� Ȯ��
prop.table(table(x,y),1)					  #���� �� Ȯ��

with(mtcars, prop.table(table(cyl,am)))
with(mtcars, prop.table(table(cyl,am),1))
with(mtcars, mosaicplot(table(cyl,am))) 			  #������ũ�׸�
with(mtcars, mosaicplot(table(cyl,am),col=c("gray","blue"))) 	  #����������ǥ�� ������ũ�� ����



