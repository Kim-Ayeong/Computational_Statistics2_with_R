#5월15일

x = 1:10
y = sample(1:100,10)
z = x+y 							#notice no error term
x; y; z
lm(z ~ x+y) 							#guess the result								
								#x1변수 = x, x2변수 = y
z = x+y + rnorm(10,0,2)
lm(z ~ x+y)
z = x+y + rnorm(10,0,10) 					#more noise
lm(z ~ x+y)
lm(z ~ x+y -1)							#or z~0+x+y to fit model with no intercept

library(lattice); library (UsingR)
data(homeprice)
str(homeprice)
attach(homeprice)
panel.lm = function(x,y) {
	panel.xyplot(x,y)
	panel.abline(lm(y~x))
}
xyplot(sale ~ rooms | neighborhood, panel=panel.lm, data=homeprice)			#too few points in some of the neighborhoods
nbd = cut(neighborhood,c(0,2,3,5),labels=c(1,2,3))
xyplot(sale ~ rooms | nbd, panel= panel.lm, layout=c(3,1))

summary(lm(sale ~ bedrooms + nbd))
summary(lm(sale ~ bedrooms + nbd + bedrooms:nbd)) 					#상호작용항
summary(lm(sale ~ bedrooms + nbd + full))
t = (28.51 - 15)/ 18.19
pt(t, df=25, lower.tail=F) # p-value for one-sided alternative
detach(homeprice)

dist = c(253, 337, 395, 451, 495, 534, 574)
height = c(100, 200, 300, 450, 600, 800, 1000)
lm.2 = lm(dist ~ height + I(height^2)) 							#에러O, not height^2
lm.3 = lm(dist ~ height + I(height^2) + I(height^3)) 					#에러X

pts = seq(min(height),max(height),length=100)
quad.fit = 200.211950 + .706182 * pts -0.000341 * pts^2
cube.fit = 155.5 + 1.119 * pts - .001234 * pts^2 + .000000555 * pts^3
plot(height, dist)
lines(pts, quad.fit, lty=1, col="blue") 						#curve 함수를 써도 됨
lines(pts, cube.fit, lty=2,col="red")
legend(locator(1),c("quadratic fit","cubic fit"), lty=1:2, col=c("blue","red"))		#legend : 범례
											#or legend("bottomright",c(), ~, ~)

pts = seq(min(height),max(height),length=100)						#sapply : 각 원소 하나하나가 function의 원소가 된다.
makesquare = sapply(pts, function(x) coef(lm.2) %*% x^(0:2))				# %*% is the inner product operator of two vectors
makecube = sapply(pts, function(x) coef(lm.3) %*% x^(0:3))
lines(pts,makesquare,lty=1)
lines(pts,makecube,lty=2)

sapply(airquality, mean)
apply(airquality, 2, mean) 					#결과 같음
sapply(c(-1,2,-3), abs) 					#각 원소에 함수 적용

#실습2

#14.2
data(homeprice)
lm(sale ~ bedrooms + nbd + full -1)

#14.5
rm(list=ls())
data(babies)
attach(babies)
babies.new<-within(babies, gestation[gestation==999]<-NA)
babies.new<-within(babies, race[race==99]<-NA)
babies.new<-within(babies, age[age==99]<-NA)
babies.new<-within(babies, ht[ht==99]<-NA)
babies.new<-within(babies, wt1[wt1==999]<-NA)
babies.new<-within(babies, smoke[smoke==9]<-NA)
range(babies$gestation)
range(babies.new$gestation)







