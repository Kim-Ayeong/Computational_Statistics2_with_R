#3월29일 과제

#두 확률밀도함수 그래프를 한 화면에 그리기

curve(exp(-(log(x)^2)/2)/sqrt(2*pi*x), 0, 7, xlim=c(0,4), ylim=c(0, 1))
fx1<-exp(-(log(x)^2)/2)/sqrt(2*pi*x)
curve(fx1*(1+sin(2*pi*log(x))), 0, 7, xlim=c(0,4), ylim=c(0, 1), add=TRUE, col="red", lty=2)

#두 분포의 적률(기댓값)이 같음