#4월3일

library(UsingR)
data(iris)
head(iris[,c(1,3)])
?PlantGrowth
PlantGrowth
tail(PlantGrowth, 3)
unstack(PlantGrowth, weight~group)
a<-unstack(PlantGrowth, weight~group)
stack(a) 					#변수이름이 지워짐
b<-stack(a)
names(b)<-c("weight", "group") 			#변수이름 생성
head(b)
stack(a, select=c(trt1, trt2)) 			#해당 열만 스탁
stack(a, select=c(2, 3))
?chips 						#반도체 자료
data(chips)
chips 						#변수이름 중 첫번째 숫자는 칩의 종류, 두번째 숫자는 측정장소
rep(c(1,2), 5) 					#1212121212
rep(c(1,2), c(5,5)) 				#1111122222 다름 주의

#실습
a<-stack(chips)
value<-a[,1]
x<-rep(1:2, c(120, 120))
y<-rep(rep(1:4, rep(30, 4)), 2)
data.frame(x,y,value)

attach(mtcars)
table(am, gear, cyl)
boxplot(mpg~am+cyl)

eng <- rnorm(100, mean=70, sd=8)
math <- rnorm(100, mean=60, sd=12)
kor <- 0.5*eng + 0.5*rnorm(100, mean=80, sd=5)
plot(kor, eng, ylab="eng/math")
points(kor, math, pch=2, col="blue")

data(iris)
pairs(iris[,1:4])
plot(iris[[1]], iris[[2]], col=2) 		#1검정, 2빨강, 3초록, 4파랑
example(pairs) 					#다양한 산점도 알아보기

#5.2
dfr<-data.frame(x,y,value)
boxplot(y~x+y, data=dfr) 			#stack 데이터
boxplot(chips) 					#unstack 데이터
						#boxplot(chips[[1]],~,chips[[8]]) 도 가능


