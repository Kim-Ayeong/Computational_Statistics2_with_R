#4��19��

library(lattice)
library(MASS)
histogram( ~ Max.Price | Cylinders, data=Cars93)
bwplot( ~ Max.Price | Cylinders, data=Cars93)
xyplot(y ~ x | z, panel=panel.ftn)

#5.4 ����

#4.3.6
str(airquality)
xyplot(Ozone~Temp|Wind,data=airquality) 								#attach ���� �ʿ� ����
summary(airquality$wind)
Wind.binary <- factor(airquality$Wind>9.7,labels=c("Low","High")) 					#�ٶ����Ⱑ ��/���� �� �� ����

xyplot(Ozone~Temp|Wind.binary, data=airquality)
xyplot(Ozone~Temp|Wind.binary, data=airquality, type=c("p","smooth")) 							#���� �Բ� ��Ȱ��
xyplot(Ozone~Temp|Wind.binary, data=airquality, panel=panel.superpose, groups=Month) 					#������ �ٸ� �׷�(��)
xyplot(Ozone~Temp|Wind.binary, data=airquality, panel=panel.superpose, groups=Month, auto.key=list(columns=2)) 		#����
xyplot(Ozone~Temp|Month, data=airquality, panel=panel.superpose, groups=Wind.binary, auto.key=list(columns=2)) 		#����ȭ���� �����غ���

dotplot(variety~yield|site, data=barley, groups=year, panel=panel.superpose, panel.groups=panel.dotplot, aspect=0.5, layout=c(2, 3),
col.line=c("grey", "transparent"), xlab="Barley Yield \n (Bushels per Acre)", key=list( text=list(c("1932", "1931")),
points=Rows(trellis.par.get("superpose.symbol"), 1:2)))

#������ ������ �ǽ��غ���




