#3월15일

library(UsingR)

getwd() 						#현재 작업경로 탐색, 해당 경로로 csv 파일 넣기
dfr<-read.csv("전산통계2성적_실습용2.csv") 		#파일 불러오기
dfr
dfr<-setwd(getwd()) 					#작업경로 바꾸기
?read.csv
read.csv("file", header=TRUE,~) 			#1행은 변수명으로 자동 설정, 아닐 경우 임의로 설정
head(dfr) 						#처음 6행
tail(dfr) 						#마지막 6행

read.csv("file", header=TRUE, sep=",") 			#엑셀 파일, 기본값:header=TRUE, 쉼표로 구분
write.csv(변수명, "file") 				#외부 파일로 저장하기

read.table("file", header=FALSE, sep="") 		#텍스트 파일, 기본값:header=FALSE > 변수명 따로 설정, 공백으로 구분
write.table(변수명, "file") 				#외부 파일로 저장하기

#실습문제
getwd()
exam<-read.csv("전산통계2성적_실습용2.csv")
str(exam)
write.table(exam, "a.txt")
exam2<-read.table("a.txt", header=TRUE)
exam2

#해결하고 싶은 문제 > 답 슬라이드