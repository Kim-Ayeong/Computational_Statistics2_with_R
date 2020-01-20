#6월12일

persp() 						#3차원 그림 함수
outer(1:5, 11:15)  					#외적(곱하기) 함수
outer(1:5, 11:15, paste)  				#함수 지정 가능
expand.grid(1:5, 11:15)	

#실습

library(lattice)
ff <- function(p,r) p/(p+(1-p)*r)
p <- seq(0.01, 0.1, 0.01)
r <- seq(0.05, 1.0, 0.01)
z <- outer(p, r, ff) 								#matrix 형태
persp(p, r, z, zlim=c(0,1), theta=-45, phi=15,					#3차원 그림
xlab="prior", ylab="FPR/TPR", zlab="posterior")
range(z)  									#사후확률 범위
image(p, r, z, xlab="prior", ylab="FPR/TPR", col=rev(heat.colors(10)))		#2차원 그림
contour(p, r, z, add=TRUE)							#등고선

g <- expand.grid(x=seq(0.01, 0.1, 0.01), y=seq(0.05, 1.0, 0.01))
g$z <- ff(g$x, g$y)
wireframe(z~x*y, data=g, scales=list(arrows=FALSE),				#3차원 그림
drape=TRUE, colorkey=TRUE,screen=list(z=30, x=-60))


