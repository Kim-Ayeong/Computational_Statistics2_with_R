#4월19일

library(lattice)
library(MASS)
histogram( ~ Max.Price | Cylinders, data=Cars93)
bwplot( ~ Max.Price | Cylinders, data=Cars93)
xyplot(y ~ x | z, panel=panel.ftn)

#5.4 생략

#4.3.6
str(airquality)
xyplot(Ozone~Temp|Wind,data=airquality) 								#attach 따로 필요 없음
summary(airquality$wind)
Wind.binary <- factor(airquality$Wind>9.7,labels=c("Low","High")) 					#바람세기가 약/강할 때 두 범주

xyplot(Ozone~Temp|Wind.binary, data=airquality)
xyplot(Ozone~Temp|Wind.binary, data=airquality, type=c("p","smooth")) 							#점과 함께 평활선
xyplot(Ozone~Temp|Wind.binary, data=airquality, panel=panel.superpose, groups=Month) 					#월별로 다른 그룹(색)
xyplot(Ozone~Temp|Wind.binary, data=airquality, panel=panel.superpose, groups=Month, auto.key=list(columns=2)) 		#범례
xyplot(Ozone~Temp|Month, data=airquality, panel=panel.superpose, groups=Wind.binary, auto.key=list(columns=2)) 		#조건화변수 수정해보기

dotplot(variety~yield|site, data=barley, groups=year, panel=panel.superpose, panel.groups=panel.dotplot, aspect=0.5, layout=c(2, 3),
col.line=c("grey", "transparent"), xlab="Barley Yield \n (Bushels per Acre)", key=list( text=list(c("1932", "1931")),
points=Rows(trellis.par.get("superpose.symbol"), 1:2)))

#나머지 집에서 실습해보기




