#5월24일

plot(runif(100), runif(100))

windows(width=6, heigh=6) 							#크기 지정
plot(runif(100), runif(100))

plot(1,1,xlim=c(1,7.5),ylim=c(0,5),type="n",xlab="",ylab="")			#x범위 : 1-7.5, y범위 : 0-5, type="n" : Do not plot points
points(1:7,rep(4.5,7),cex=1:7,col=1:7,pch=0:6)
text(1:7,rep(3.5,7),labels=paste(0:6),cex=1:7,col=1:7)
points(1:7,rep(2,7),pch=(0:6)+7) 						#Plot symbols 7 to 13
text((1:7)+0.25,rep(2,7),paste((0:6)+7))					#Label with symbol number
points(1:7,rep(1,7),pch=(0:6)+14) 						#Plot symbols 14 to 20
text((1:7)+0.25,rep(1,7),paste((0:6)+14))

view.colours <- function() {
	plot(1,1,xlim=c(0,14),ylim=c(0,3),type="n",axes=F,xlab="",ylab="")	#축 그리지 않음
	text(1:6,rep(2.5,6),paste(1:6),col=palette()[1:6],cex=2.5) 		#palette() #8개 값
	text(10,2.5,"Default palette",adj=0)
	rainchars <-c("R","O","Y","G","B","I","V")
	text(1:7,rep(1.5,7),rainchars,col=rainbow(7),cex=2.5)
	text(10,1.5,"rainbow(7)",adj=0)						#adj=0 : 왼쪽맞춤
	cmtxt <-substring("cm.colors",1:9,1:9)					#to split “cm.colors ” into its 9 characters
	text(1:9,rep(0.5,9),cmtxt,col=cm.colors(9),cex=3)
	text(10,0.5,"cm.colors(9)",adj=0)
}
view.colours()

plot(1,1,xlim=c(0,2),ylim=c(0,2),type="n",yaxt="n",xaxt="n",xlab="",ylab="")
mtext(text="Parallel",side=2,line=3)						#mtext : 그래프 밖에 글씨를 쓰고 싶을 때
										#side = 1아래2왼쪽3위4오른쪽, line = 1부터 멀수록 커짐
mtext(text="Horizontal",side=2,line=-1,las=1) 					#las = 1수평으로 씀(0~다양)

par(mar=c(4,2,2,1)) 								#cf. par()$mar
par(oma=c(2,0,3,0)) 								#cf. par()$oma > outer margin : 멀티프레임일 때 필요

library(UsingR);attach(florida)
plot(BUSH,BUCHANAN)
identify(BUSH,BUCHANAN,label=County,n=2)
detach(florida)
locator(n=1)									#?plotmath 참고하기

# 예1
x <- 1:20
y <- sqrt(x) + rnorm(20)
plot(x,y)
panel.smooth(x,y)

# 예2
pairs(swiss, panel = panel.smooth)

dotchart(islands, cex=0.5)							#islands is a vector of named numeric values

x <- 0:50; y <- pi*x^2
plot(x,y, type="l", xlab="Radius", ylab=expression(Area[0]==pi*r ^2))

#실습

#3.9.2
curve(dnorm(x), -4, 4, ylab=expression(1 %/% sqrt(2*pi)))




