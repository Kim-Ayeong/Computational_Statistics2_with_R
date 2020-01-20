#4월24일

#Example1 : Homedata
data(homedata)
?homedata
head(homedata)
plot(homedata) 							#산점도 출력

simple.eda <- function (x)  { 
  old.par <- par(no.readonly = TRUE) 				#save all the previous par settings 
  on.exit(par(old.par)) 					#함수가 끝났을 때 실행, 함수의 결과값X, 오로지 실행만!
  par(mfrow = c(1, 3)) 
  hist(x); rug(x) 
  boxplot(x); rug(x, side = 2); title("boxplot") 
  qqnorm(x); qqline(x)  					#마지막 행이 결과값
}

ff <- function() {
  oldpar <- par(mfrow = c(1,3))
  x <- 1 
  x
  par(oldpar)  							#멀티프레임 복원, 결과값
}
ff() 								#출력X

ff <- function() {
  oldpar <- par(mfrow = c(1,3))
  on.exit(par(oldpar))
  x <- 1 
  x  								#결과값
}  
ff() 								#1 출력, on.exit(par(oldpar))는 함수가 다 끝난 후 출력

simple.eda(homedata[[1]])					#세 그림 출력, 오른쪽 꼬리가 긴 형태
								#오른쪽 그림 선 = 기대값, 점들 결과값이 기대값보다 큼
#[Q] 1970년과 2000년을 비교하려면 어떻게?	
value.diff <- homedata$y2000 ? homedata$y1970 			#30년동안의 집값 변화량
simple.eda(value.diff)  					#오른쪽꼬리가 긴형태

#Example2 : CEO Salaries
data(exec.pay)
str(exec.pay)
sum(exec.pay == 0)  						#봉급(만달러 미만)이 0인 사람 = 3명, 예외값이므로 제외
log.pay <- log10(exec.pay[exec.pay >0])
simple.eda(log.pay)

#Example3 : Taxi Time at EWR
#taxi in time : 착륙 후 머무는 시간
#taxi out time : 이륙 전 활주로에 머무는 시간
data(ewr)
names(ewr)
airnames = names(ewr) 						#store them for later
ewr.actual = ewr[,3:10] 					#get the important columns
boxplot(ewr.actual)
boxplot(ewr.actual)

#[Q] 항공사별로 ‘이륙 전~’과 ‘착륙 후~’을 구분하려면 어떻게? 
range(ewr[,3:10]) 								#min=5.7, max=40.4
par(mfrow=c(2,4))
attach(ewr)
for(i in 3:10) boxplot(ewr[,i] ~inorout, ylim = c(5,41), main=airnames[i]) 	#교재 수정, 이미 벡터라 as.factor 필요X
detach(ewr)
par(mfrow=c(1,1)) 								#환원
#ylim을 해주는 이유 : in out 각각의 y범위를 통일 시키기 위해

#Example4 : Various Distributions
#Symmetric distributions : 대칭분포, 자유도가 작으면 꼬리가 두꺼움. size는 2가 최소
#Skewed : 비대칭 분포
old.par <- par(mfrow=c(2,3), bty="n", cex=1.1)
#bty="n" : 박스를 그리지 말라
#cex=1.1 : 글자 크기를 자동값보다 1.1배

#실습
#8.7
Q. 수익률이 정규분포를 따르는지를 보아라
(첫날은 어제값이 없으므로 수익률 없고, 둘째날부터 수익률 발생한다!) 
data(dowdata)
str(dowdata)
X <- dowdata$Close
Z <- log(X[2:443]/X[1:442]) 						#for문 쓸 필요X, 수익률은 자연로그
simple.eda(Z) 								#수익률은 정규분포 가정이 된다고 말할 수 있다.
length(Z)
length(X)
Y <- as.numeric(Z[2:442]/Z[1:441] > 0)
table(Y)
prop.test(sum(Y),441)  							#각각의 명령어를 간단하게 설명할 수 있어야 함

#신뢰구간 출제 시, 위 prop.test 참고