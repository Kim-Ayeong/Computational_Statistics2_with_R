#5월17일

library(UsingR)
with(airquality, LOzone<-log(Ozone)) 					#No good
airquality
within(airquality, LOzone<-log(Ozone)) 					#No good, 새로운 데이터프레임
airquality<-within(airquality, LOzone<-log(Ozone)) 			#Good

x = c(4,3,4,5,2,3,4,5)
y = c(4,4,5,5,4,5,4,4)
z = c(3,4,2,4,5,5,4,4)
scores = data.frame(x,y,z)
boxplot(scores)
scores = stack(scores)
names(scores)<-c("y", "graders")					#values=y, ind=graders
oneway.test(y~graders, scores, var.equal=TRUE) 				#p값 비교

attach(scores)
stripchart(values~ind, pch=1, method="stack")
points(mean(x),1,pch=17,cex=1.4,); abline(h=1,lty=3)
points(mean(y),2,pch=17,cex=1.4); abline(h=2,lty=3)
points(mean(z),3,pch=17,cex=1.4); abline(h=3,lty=3)
detach(scores)

summary(oneway.test(y~graders, scores, var.equal=TRUE))
aov(y~graders, scores, var.equal=TRUE)
summary(aov(y~graders, scores, var.equal=TRUE)) 			#p값 비교

#Multiple Comparison 다중 비교
#5개 모집단 평균 비교 95% 신뢰구간(또는 유의수준 5% 검정)
#> 5n2=10번 검정
#family-wise significance level=5% 전체 검정 중 오류가 날 확률

#15.1
str(InsectSprays)
boxplot(count~spray, data=InsectSprays)
stripchart(count~spray, InsectSprays)
(obj.aov<-aov(count~spray, data=InsectSprays))
summary(obj.aov)
(obj.Tukey<-TukeyHSD(obj.aov))
plot(obj.Tukey)

#실습2
str(chicken)
boxplot(chicken)
stripchart(chicken)
aov(chicken) 								#에러O, 데이터 형태가 맞지 않음
chick<-stack(chicken) 							#에러X
(obj.aov<-aov(values~ind, chick))
summary(obj.aov) 
plot(TukeyHSD(obj.aov)

