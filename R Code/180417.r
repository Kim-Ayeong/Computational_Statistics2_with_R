#4��17��

#7.9
res.median=c();res.mean=c() 					#initialize
for(i in 1:200) { 						#create 200 random samples
 X = rnorm(200,0,1)
 res.median[i] = median(X); res.mean[i] = mean(X)
}
boxplot(res.mean,res.median) 					#compare

#�ǽ�
my.binom <- function(n, p, x) {
  if(n*p>5 & n*(1-p)>5) {
    z<-(x-(n*p)+0.5)/sqrt(n*p*(1-p))
    return(pnorm(z))
  }
  else return(pbinom(x, n, p))
}
my.binom(100, 0.5, 50)
pbinom(100, 0.5, 50)

#�� �ٸ� ���
my.binom <- function(n, p, x) {
  if(!(n*p>5 & n*(1-p)>5)) return(pbinom(x, n, p))
  pnorm((x-(n*p)+0.5)/sqrt(n*p*(1-p))) 				#������ �ุ ����
}
my.binom(100, 0.5, 50)
pbinom(100, 0.5, 50)
