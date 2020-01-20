#5월3일

#형식 : prop.test(x, n, p = NULL, alternative = c("two.sided", "less", "greater"), conf.level = 0.95, correct = TRUE)
prop.test(42,100,p=.5) 
prop.test(420,1000,p=.5)				#p값은 같지만 카이제곱값, p-value는 다름 > 결과도 다름 

#형식 : t.test(x,  NULL, alternative = c("two.sided", "less", "greater"), mu=25, conf.level = 0.95, ...)
#mu의 default는 0
t.test(x,alternative="less",mu=25)
#요약된 자료가 있을 때
xbar=22; s=1.5; n=10; mu=25
t = (xbar-mu)/(s/sqrt(n))
pt(t,df=n-1) 						#6.846828e-05

#실습문제

#10.2 
data(smokyph)
t.test(smokyph$waterph, mu=7)
#신뢰구간에 7이 포함되지 않았기 때문에 귀무가설 기각, mu=7이 아니다.
boxplot(smokyph$waterph) 

#10.3
prop.test(440,900,p=0.5)
#신뢰구간이 0.5를 포함하기 때문에 귀무가설을 기각할 수 없음. 

#log X ~ N(mu, var) 일 때, X ~ log normal(mu, var), 로그정규분포는 비대칭분포.
Y = log X
X = exp (Y)
E(X) = E(exp(Y)) = exp(mu+var/2)

X <- rlnorm(20,0,2)
y <- rlnorm(20,2,2)
boxplot(x,y)
t.test(x,y)
wilcox.test(x,y)

#형식 : subset(전체 data frame, 조건, select)
subset(ewr, inorout == "out", select=c("AA","NW")) 
#전체 데이터 프레임 ewr 중 inorout == out인 데이터들만 (TRUE) 선택한 후, “AA”,“NW”만 선택

#11.1
data(homework)
str(homework)
with(homework, boxplot(Private, Public, names=c("Private","Public")))
with(homework, t.test(Private, Public))

#황금비
#a:(1-a) = 1:a => a = (1+sqrt(5))/2
