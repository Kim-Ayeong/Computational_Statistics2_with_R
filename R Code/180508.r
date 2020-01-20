#5월8일

shapiro.test(rchisq(100,5))

freq = c(22,21,22,27,22,36) 					#toss a die 150 times
								#기대값=25이지만 극단값 36이 나타날 수 있다.
probs = c(1,1,1,1,1,1)/6 					#or use rep(1/6,6)
chisq.test(freq,p=probs) 					#df=5

yesbelt = c(12813,647,359,42) 					#분할표 자료는 교재 참조
nobelt = c(65963,4000,2642,303)
chisq.test(data.frame(yesbelt,nobelt)) 				#or chisq.test(rbind(yesbelt,nobelt))
								#행과 열이 바뀌어도 됨

#statistical significance 통계적 검정, practical significance 실용적 검정 구분

#homogeneity test : 동질성 검정
die1<-sample(1:6, 60, rep=TRUE) 				#주사위 공정하게 60번 던지기
die2<-sample(1:6, 60, rep=TRUE, prob=1:6) 			#주사위 공정하지 않게 60번 던지기
								#1:6 = (1:6)/21 > 확률합 1 자동 설정
obj<-chisq.test(rbind(table(die1), table(die2)))		#rbind() : 데이터프레임 만들기
str(obj)
obj$p.value

#실습

a <- sample(c("H","T"),100,prob=(1:2)/3,rep=T)
b <- sample(c("H","T"),100,prob=(2:1)/3,rep=T)
#앞면이 나올 확률이 같은 동전인지 검정하고 싶음 > 동질성 검정
chisq.test(rbind(table(a),table(b))) 				#이용 O, 동질성 검정일 때
chisq.test(table(a,b)) 						#이용 X, 독립성 검정일 때
chisq.test(a,b) 						#이용 X, 독립성 검정일 때 < 하나의 관측값에서 두 속성의 독립성 검정

#12.1 동질성 검정

#12.2 독립성 검정
r1 = c(67, 10, 5)
r2 = c(42, 6, 5)
r3 = c(75, 8, 4)
r4 = c(56, 4, 6)
r5 = c(57, 15, 1)
chisq.test(rbind(r1, r2, r3, r4, r5))

#12.3
x<-c(53, 22, 49)
(pr<- c(5, 3, 4)/12)				#(괄호 속 변수)를 바로 출력
chisq.test(x, p=pr)

#12.4
library(UsingR)
data(UCBAdmissions) 				#read in the dataset
?ftable
x = ftable(UCBAdmissions) 			#flatten
x 						#what is there
str(UCBAdmissions)
ftable(UCBAdmissions)
ftable(UCBAdmissions, row.vars="Gender", col.vars="Admit")

