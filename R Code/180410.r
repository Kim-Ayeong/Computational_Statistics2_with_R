#4월10일

x<-paste(rep(c("A", 2:10, "j", "Q", "K"), 4)) 			#paste() : 붙여주기
x								#주사위 2개를 5번 굴리기
outer(1:6, 1:6) 						#outer() : 열벡터, 행벡터로 행렬곱셈 만들기
dice<-as.vector(outer(1:6, 1:6, FUN=paste))	 		#as.vector() : 행렬을 벡터로 만들기

paste(1:6, 1:6, seq="") 					#공백없이 구분, 기본 구분자는 공백
paste(1:6) 							#벡터를 하나씩 떼어냄
date() 								#오늘 날짜, 시간
paste(1:6, collapse="") 					#하나의 벡터로 만들때 구분자없이 만들기

#실습
sample(c("H", "T"), 10, rep=T, prob=c(2,1)) 			#확률을 알아서 비율로 나눠줌

#6.12
cards<-paste(rep(c("A", 2:10, "j", "Q", "K"), 4), c("H, "D", "S", "C"))
sample(cards, 5)

#사용자 정의 함수
1+2; 1+3 							#모든 실행결과 출력
{1+2; 1+3}	 						#마지막 실행결과만 출력

F2C <- function(F) (F-32)*5/9 					#함수 만들기
F2C(80)
C2F <- function(C) C*9/5+32
C2F(24)
C2F <- function(C) {
  F<-C*9/5+32
  paste(F, "degree in Fahrenheit")
}
C2F(24)

circle<-function(R) {
  circumf<-2*pi*R
  area<-R*R*pi
  cat("Circum ference = ", circumf, "\nArea = ", area, "\n")
}
								#cat() : 문자, 숫자든 형식 그대로 출력
circle(3)

circle<-function(R=1) {
  circumf<-2*pi*R
  area<-R*R*pi
  cat("Circum ference = ", circumf, "\nArea = ", area, "\n")
}
circle() 							#R=1로 자동설정

ff <- function(x, y=length(z)){z <- x; y}
ff(1:10) 							#10출력
