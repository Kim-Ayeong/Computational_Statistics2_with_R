#6��12��

persp() 						#3���� �׸� �Լ�
outer(1:5, 11:15)  					#����(���ϱ�) �Լ�
outer(1:5, 11:15, paste)  				#�Լ� ���� ����
expand.grid(1:5, 11:15)	

#�ǽ�

library(lattice)
ff <- function(p,r) p/(p+(1-p)*r)
p <- seq(0.01, 0.1, 0.01)
r <- seq(0.05, 1.0, 0.01)
z <- outer(p, r, ff) 								#matrix ����
persp(p, r, z, zlim=c(0,1), theta=-45, phi=15,					#3���� �׸�
xlab="prior", ylab="FPR/TPR", zlab="posterior")
range(z)  									#����Ȯ�� ����
image(p, r, z, xlab="prior", ylab="FPR/TPR", col=rev(heat.colors(10)))		#2���� �׸�
contour(p, r, z, add=TRUE)							#���

g <- expand.grid(x=seq(0.01, 0.1, 0.01), y=seq(0.05, 1.0, 0.01))
g$z <- ff(g$x, g$y)
wireframe(z~x*y, data=g, scales=list(arrows=FALSE),				#3���� �׸�
drape=TRUE, colorkey=TRUE,screen=list(z=30, x=-60))


