#3월27일

names(Animals)  						  #어떤 변수가 있는지 알고 싶을때
par(mfrow=c(2,1)) 						  #2행1열로 화면 나눔
oldpar = par() 						   	  #현재상태를 저장
par(oldpar) 							  #이전 정보 복원
hist(x); boxplot(x) 						  #동시에 그리기
density(x)  							  #확률밀도함수
lines(density(x))						  #자료의 개수가 적으면 믿을 수 없음
lines(density(x),col = "blue",type="h")
lines(density(x),col = "blue",type="b")

with(mtcars, table(cyl,am)) 					  #mtcars 경로 추가

table(x,y) 							  #이차원분할표
prop.table(table(x,y)) 						  #전체확률
prop.table(table(x,y),2)					  #열의 합 확률
prop.table(table(x,y),1)					  #행의 합 확률

with(mtcars, prop.table(table(cyl,am)))
with(mtcars, prop.table(table(cyl,am),1))
with(mtcars, mosaicplot(table(cyl,am))) 			  #모자이크그림
with(mtcars, mosaicplot(table(cyl,am),col=c("gray","blue"))) 	  #이차원분할표는 모자이크를 권함



