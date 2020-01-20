#5월29일

x <- c(2,3,4); y <- c(1,3,2,2,5)
match(x,y)
order(y) 							#cf. sort(y), 자리에 있는 번호의 자료가 해당 순위로 와야함
rank(y)
x <- rep(1:5,rep(2,5))
two4 <- x %in% c(2,4)
two4
x[two4] 							#x[x==2 | x==4]와 같은 결과

library(MASS); data(Cars93)
Cars93$Make
pos.blank <- sapply(as.character(Cars93$Make), function(x) {
	n <- nchar(x)
	a <- substring(x,1:n,1:n)
	m <- match(" ",a,nomatch=1)
	m
})

a<-c("Kim, Ji-Hyun", "Park", "ss")
nchar(a) 							#문자열 길이 반환
substring(a,1,3) 						#1~3번째까지 부분 문자열 반환
substring(a, c(1,1), c(3,4))
substring(a[1], 1:nchar(a[1]), 1:nchar(a[1])) 			#한 글자씩 해체

car.brandnames <- substring(Cars93$Make,1, pos.blank-1)
car.brandnames [1:5]

#실습

my.function <- function(x) {
	n<-nchar(x)
	sum(match(substring(x, 1:n, 1:n), letters))
}
my.function("attitude")

data(airquality)
apply(airquality, 2, FUN=mean, na.rm=T)

sapply(airquality, FUN=mean, na.rm=T) 				#결과값은 스칼라, 벡터
class(sapply(airquality, FUN=mean, na.rm=T))
typeof(sapply(airquality, FUN=mean, na.rm=T))

lapply(airquality, FUsN=mean, na.rm=T)				#결과값은 리스트
class(lapply(airquality, FUN=mean, na.rm=T))
typeof(lapply(airquality, FUN=mean, na.rm=T))

sapply(airquality[, 1:4], summary, na.rm=T)			#비교해보기
lapply(airquality[, 1:4], summary, na.rm=T)

str(cabbages)
attach(cabbages)
aggregate(HeadWt, list(Cult, Date), mean) 			#grouping 후 함수 실행
tapply(HeadWt, list(Cult, Date), mean) 				#grouping 후 함수 실행

attach(airquality)
apply(airquality[ ,-(5:6)], 2, FUN=tapply, list(Month), mean, na.rm=T)
sapply(airquality[ ,-(5:6)], FUN=tapply, list(Month), mean, na.rm=T)
tapply(Ozone, list(Month), FUN=mean, na.rm=T)



