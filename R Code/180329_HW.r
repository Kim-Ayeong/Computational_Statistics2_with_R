#3��29�� ����

#�� Ȯ���е��Լ� �׷����� �� ȭ�鿡 �׸���

curve(exp(-(log(x)^2)/2)/sqrt(2*pi*x), 0, 7, xlim=c(0,4), ylim=c(0, 1))
fx1<-exp(-(log(x)^2)/2)/sqrt(2*pi*x)
curve(fx1*(1+sin(2*pi*log(x))), 0, 7, xlim=c(0,4), ylim=c(0, 1), add=TRUE, col="red", lty=2)

#�� ������ ����(���)�� ����