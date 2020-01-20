#3월8일

a=c(-2,3,5) 				#벡터 입력
a<-c(-2,3,5) 				#벡터 입력
a_vec=c(-2,3,5) 			#알파벳으로 시작, 대소문자 구분
a<-scan() 				#입력창, spacebar+enter으로 종료

a<-c(-2,3,5)
a>=3
a==3
a!=5
(a>2)&(a<6) 				#그리고
(a>2)|(a<6) 				#또는
!(a>3) #반대
a<-rnorm(10,80) 			#평균이 80인 정규분포에서 확률표본10개 추출
a
sum(a>=80)				#TRUE=1, FALSE=0
b<- a>=80
b
any(b) 					#TRUE가 1개이상 일 때 TRUE
all(b) 					#전부 TRUE일 때만 TRUE

a<-c(170, NA,160)
a==NA 					#에러, 모두 NA로 바꿔버림
is.na(a) 				#에러X, 결측값 찾기
sum (is.na(a)) 				#결측값 개수
0/0 					#NaN, 정의되지 않은 값
1/0 					#Inf, 무한대
Inf-Inf 				#NaN
Inf+Inf 				#Inf

a<-rnorm(10,80)
a[5] 					#5번째 인덱스
a[-5] 					#5번째 인덱스 제외
a[1,3] 					#에러
a[c(1,3)] 				#에러X
a>=80 					#T/F로 출력
a[a>=80] 				#해당 인덱스 출력
a[(a>=79)&(a<=81)] 			#78, 81사이값 출력
length(a) 				#길이
1:10 					#1~10까지
a[(length(a)-1):length(a)] 		#가장 마지막 원소 2개 출력

seq(1,10) 				#1~10까지 출력
seq(1,10,2) 				#시작, 끝, 간격
seq(from=1,to = 3, by = 0.5)
seq(to=3, by=0.5, from=1) 		#순서 상관X
seq(1, length=5, by=0.5) 		#1부터 데이터 5개까지 0.5간격으로 출력
seq(1, length.out=5, by=0.5)

x<-11:15 				#length(x)=5
x<-c(x, 16:20) 				#덧붙이기
x[6:10]<-16:20 				#덧붙이기
x

#예제 2.5

a<-c("Kim","Ji-hyun")
LETTERS 				#알파벳 대문자 출력
letters 				#알파벳 소문자 출력
letters[1:5] 				#a,b,c,d,e 출력
month.name 				#월 이름 출력
month.abb 				#월 이름 약자 출력
month.abb[3] 				#Mar 출력