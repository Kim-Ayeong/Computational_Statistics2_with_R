#3월22일

library(UsingR)

?mtcars
data(mtcars)
str(mtcars)
plot(wt,mpg) 					#에러
search()					#경로 확인
plot(mtcars$wt,mtcars$mpg)	
attach(mtcars) 					#2번째 포지션에 주소 추가
search()					#경로 확인
plot(wt,mpg) 					#에러X
ls()
ls(pos=2)
detach(mtcars)					#주소 삭제
detach() 					#2번째 포지션 자동 삭제

with(mtcars, plot(wt,mpg))			#경로 추가 후 함수 적용
data(babies)
babies$ht[babies$ht==99]<-NA
with(babies, range(ht))
with(babies, sum(ht==NA)) 			#에러
with(babies, sum(is.na(ht))) 			#에러X

x<-c("Male", "Female", "Male")
factor(x)					#범주형 자료 변환 함수
typeof(x) 					#character 출력, 변수명 그대로 저장
typeof(factor(x)) 				#integer 출력, 정수형으로 저장
table(x)					#도수 분포표
table(factor(x))

xc<-factor(x)	
barplot(xc) 					#막대 그래프, 에러
barplot(table(xc)) 				#에러X
barplot(table(xc)/length(xc)) 			#비율
pie(table(xc))					#원 그래프
pie(table(xc), col=c("blue", "red"))

wt<-mtcars$wt
summary(wt) 					#통계량 출력
mean(wt)
mean(wt,trim=0.1)				#절사평균
IQR(wt)						#사분위수
sd(wt)	

stem(wt)					#줄기잎 그림
stem(wt, scale=2) 				#폭 넓히기
stem(wt, scale=0.5) 				#폭 좁히기
?stem
apropos("stem") 				#경로에서 탐색
help.search("stem") 				#도움말 문서에서 탐색

hist(wt)					#히스토그램
hist(wt, prob=T) 				#확률
rug(wt) 					#데이터 위치 표시
hist(wt, breaks=5) 				#cut함수 참고, 구간개수=5 
hist(wt, breaks=c(0,3,5,6)) 			#구간 임의설정
rug(wt) 					#그림함수 후 등장

#예제 3.7
pi2000
hist(pi2000)
hist(pi2000, prob=T, breaks=10)
hist(pi2000, prob=T, breaks=seq(-0.5, 9.5, 1))
rug(pi2000)
table(pi2000)/2000 					#빈도