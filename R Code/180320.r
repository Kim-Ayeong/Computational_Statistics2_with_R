#3월20일

alist<-list(name="Kim",eye=1.2)
alist$name 						#컴포넌트
alist$eye						#컴포넌트
alist[[1]] 						#1번째 컴포넌트 요소만 출력
alist[1] 						#1번째 컴포넌트 이름+요소 출력, 거의 사용X

dfr<-data.frame(c1=c("Kim","Lee"), c2=c(170,175))
#데이터 접근법
dfr[,2] 						#2열
dfr[[2]] 						#2열
dfr[2,2] 						#2행2열
dfr[,'c2']						#c2열
#리스트접근법
dfr[2]							#2번째 컴포넌트 요소
dfr[2][2] 						#에러
dfr[[2]][2]						#2행2열
dfr$c2							#c2컴포넌트

library(UsingR)
search() 						#포지션2에 UsingR 경로 확인
str(babies)
data(babies) 						#babies 사본을 만들어 작업
ls() 
babies$race
head(babies$race)					#앞의 6줄만 출력
babies$race<=5 						#T/F로 출력
babies$race[babies$race<=5]<-1				#값 변경

head(airquality)
str(airquality)
mean(airquality$기모띄) 				#NA 출력
mean(airquality$기모띄,na.rm=T) 			#결측값 제거, 기본값:na.rn=False
apply(airquality[,1:4],2,mean) 				#(데이터프레임, 1:행 2:열, 적용할 함수, (함수인자))
apply(airquality[,1:4],2,mean,na.rm=T)

#실습문제
a==NA 							#결측값X
a=="NA" 						#결측값X
is.na(a) 						#결측값O
?babies							#결측값 정보 찾기, wt:999, ht:99, 단위 주의
range(babies$wt)
range(babies$ht)
babies$ht[babies$ht==99]<-NA
mean(babies$wt)
mean(babies$wt, na.rm=T)				#같으면 결측값 없음, 다르면 결측값 있음
mean(babies$wt, na.rm=T)*28.35/1000
mean(babies$ht, na.rm=T)*2.54/100