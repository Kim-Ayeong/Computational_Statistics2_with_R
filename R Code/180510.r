#5월10일

n <- 100
x <- runif(n, min=1, max=5)
y <- 1+x+rnorm(n)
obj.lm <- lm(y~x)
str(obj.lm) 							#정보가 너무 많음
summary(obj.lm) 						#중요한 정보만 요약보기
plot(x, y); abline(obj.lm, col="blue", lty=2)
head(resid(obj.lm))
head(obj.lm$residuals)
obj.summary <- summary(obj.lm)
obj.summary$coef[2,2]
obj.pred <- predict(obj.lm,data.frame(x=sort(x)), level=.9,interval="confidence") 
plot(x,y) ; abline(obj.lm)
points(sort(x), obj.pred[,'lwr'], type = "1",col="red")

#13.4
x <- c(600, 1000, 1250, 1600, 1800, 2100, 2500, 2900)
y <- c(56, 54, 56, 50, 47, 49, 47, 45)
obj.lm <- lm(y~x); 
plot(x, y); abline(obj.lm, col=4)
summary(obj.lm)
tval <- (5.1146-5.34)/0.9214
2*pt(tval, df=6) 						#p-value
#beta의 95%신뢰구간 = beta_hat +- t6(0.975)*SE(beta_hat)
me <- 5.1146+qt(0.975, df=6)*0.9214
lwr <- 5.1147-me; upr<-5.1146+me
cat("(", lwr, ", ", upr, ")\n")

