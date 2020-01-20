#5��31��

attach(airquality)
sapply(split(Ozone,Month),mean,na.rm=T)  					#���� ���� �ڷῡ�� ����� ���϶�
aggregate(Ozone, list(Month),mean,na.rm=T)   					#���´� �ٸ����� ���� ����� ���� �� �ִ�.

authors <- data.frame(surname = c("Tukey", "Venables", "Tierney", "Ripley", "McNeil"),
nationality = c("US", "Australia", "US", "UK", "Australia"),
deceased = c("yes", rep("no", 4)))
books <- data.frame(name = c("Tukey", "Venables", "Tierney", "Ripley", "Ripley", "McNeil", "R Core"),
title = c("Exploratory Data Analysis", "Modern Applied Statistics ...", "LISPSTAT", "Spatial Statistics",
"Stochastic Simulation", "Interactive Data Analysis", "An Introduction to R"),
other.author = c(NA, "Ripley", NA, NA, NA, NA, "Venables & Smith"))
authors
books
merge(authors, books, by.x = "surname", by.y = "name")         			#merge : �����϶�
merge(books, authors, by.x = "name", by.y = "surname")
merge(authors, books, by.x = "surname", by.y = "name", all = TRUE)

a <- as.Date("2018-05-31") 							#as.Date : ��¥�� �ν��϶�
a
dd <- as.Date(c("2003/08/24","2003/11/23","2004/02/22","2004/05/23"))   
diff(dd)                 							#��¥���� ����
as.Date("31-05-2018", format="%d-%m-%Y")      					#format: Y=4�ڸ� ����, y=2�ڸ� ����
as.Date("2018/5/31")    							# "/"�� ����
as.integer(a)  	 								#19??�� 1�� 1�� ���ķ� �����̳� ��������
as.Date("2018-5-31")-as.Date("1994-8-16")  					#���� �����̳� ��Ҵ���

#�ǽ�

attach(Cars93)
str(sapply(split(Cars93, Type), summary))
obj <- lapply(split(Cars93, Type), summary)
obj[[1]]
aggregate(Origin, list(Origin, Type), length)
sapply(Origin, list(Origin, Type), length)
tapply(Origin, list(Origin, Type), length)

#8.9.a
attach(Cars93)
lapply(split(Cars93,Type), FUN=summary)
#Q. sapply�� �� �� �� ���°�?
#A. sapply�� �Լ��� ������ ����� ��Į�� (�Ǵ� ����)�̾���ϴµ�, summary�� ������ ����� list�̴�.

#8.9.b
sapply(split(Cars93,list(Origin,Type)),nrow)
#lapply�� ���� ������ ���̴�?

#8.9.d
diff(as.Date(c("1700/01/01","1800/01/01")))
diff(as.Date(c("1998/01/01","2000/01/01")))













