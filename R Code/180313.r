#3월13일

sample(1:100,10) 			#1~100 중에 샘플 10개 추출
sample(1:10,10,rep=T) 			#복원 추출
x<-sample(1:400,20)
x
max(x)
x==max(x) 				#T/F로 출력
which(x==max(x)) 			#몇번째 인덱스인가

cumsum(1:5) 				#누적합
cummax(1:5) 				#1,2,3,4,5 출력, 누적최댓값
cummax(5:1) 				#5,5,5,5,5 출력
pmax(1:5) 				#원소 중 최댓값
diff(1:10) 				#1 출력, 원소 간 차이
x<-runif(10) 				#0~1 중 난수 10개 추출
x
y<-runif(10)
y
pmax(x,y) 				#x, y 중 최댓값 원소 출력
x<-de(x) 				#데이터 에디터(편집기)

#예제 2.2
x<-scan()
x
max(x)
mean(x)
min(x)
x[which(x==24)]<-18
x
mean(x)
sum(x>=20)
sum(x<20)/length(x)
mean(x<20)

#예제2.6
x<-c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)
x
mean(x)
log10(x)
(x-4.4)/2.875
max(x)-min(x) 						#스칼라
range(x) 						#벡터
diff(range(x))

x<-c(80,90,70)
y<-c(85,89,75)
data.frame(x,y)						#데이터프레임 생성
data.frame(mid=x,final=y)				#데이터프레임 생성
dfr<-data.frame(mid=x,final=y)
dfr
quiz<-c(9,8,7)
dfr<-cbind(dfr,quiz)					#열 추가
dfr<-rbind(dfr,c(75,88,8))				#행 추가
names(dfr)<-c("mid-term","final","quiz")		#변수 이름 붙이기
dfr
dfr[2,]							#2행
dfr[,2] 						#2열
dfr[,"final"] 						#final 변수
dfr[,-1] 						#1열 제외
mean(dfr[,2])						#2열 평균

#실습문제1
x<-c(57,21, 56, 41, 35, 88, 37, 80, 63, 54)
y<-c(68, NA, 77, 10, 44, 81, 67, 50, 73, 51)
dfr<-data.frame(x,y)
z<-c("No","Yes",rep("No",8))
dfr<-data.frame(z,dfr)
names(dfr)<-c("중간고사","기말고사","재수강")
dfr

#주요내용2
str(dfr) 						#데이터 구조 보기
str(Titanic) 						#Titanic:이미 존재하는 데이터셋

#실습문제2
str(airquality)
?airquality
names(airquality)<-c("오존양","조사양","바람세기","온도","달","일")
airquality
