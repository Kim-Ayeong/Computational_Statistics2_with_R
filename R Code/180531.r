#5월31일

attach(airquality)
sapply(split(Ozone,Month),mean,na.rm=T)  					#월별 오존 자료에서 평균을 구하라
aggregate(Ozone, list(Month),mean,na.rm=T)   					#형태는 다르지만 같은 결과를 얻을 수 있다.

authors <- data.frame(surname = c("Tukey", "Venables", "Tierney", "Ripley", "McNeil"),
nationality = c("US", "Australia", "US", "UK", "Australia"),
deceased = c("yes", rep("no", 4)))
books <- data.frame(name = c("Tukey", "Venables", "Tierney", "Ripley", "Ripley", "McNeil", "R Core"),
title = c("Exploratory Data Analysis", "Modern Applied Statistics ...", "LISPSTAT", "Spatial Statistics",
"Stochastic Simulation", "Interactive Data Analysis", "An Introduction to R"),
other.author = c(NA, "Ripley", NA, NA, NA, NA, "Venables & Smith"))
authors
books
merge(authors, books, by.x = "surname", by.y = "name")         			#merge : 병합하라
merge(books, authors, by.x = "name", by.y = "surname")
merge(authors, books, by.x = "surname", by.y = "name", all = TRUE)

a <- as.Date("2018-05-31") 							#as.Date : 날짜로 인식하라
a
dd <- as.Date(c("2003/08/24","2003/11/23","2004/02/22","2004/05/23"))   
diff(dd)                 							#날짜들의 차이
as.Date("31-05-2018", format="%d-%m-%Y")      					#format: Y=4자리 연도, y=2자리 연도
as.Date("2018/5/31")    							# "/"도 인정
as.integer(a)  	 								#19??년 1월 1일 이후로 몇일이나 지났는지
as.Date("2018-5-31")-as.Date("1994-8-16")  					#내가 몇일이나 살았는지

#실습

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
#Q. sapply는 왜 쓸 수 없는가?
#A. sapply는 함수를 적용한 결과가 스칼라 (또는 벡터)이어야하는데, summary를 수행한 결과는 list이다.

#8.9.b
sapply(split(Cars93,list(Origin,Type)),nrow)
#lapply를 썼을 때와의 차이는?

#8.9.d
diff(as.Date(c("1700/01/01","1800/01/01")))
diff(as.Date(c("1998/01/01","2000/01/01")))













