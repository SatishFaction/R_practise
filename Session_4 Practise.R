#################Session 4 Practise#################
View(mtcars)
nrow(mtcars)
ncol(mtcars)
require(sqldf)
?sqldf
getwd()
f=read.csv("framingham.csv")
I=read.csv("IBM.csv")
sqldf('select * from mtcars')
typeof(mtcars)
class(mtcars)
nrow(f)
ncol(f)
names(f)
sqldf('select avg(age) from f ')
class(f)
class(f$education)
class(I$Attrition)
f<-as.matrix(f)
f[1,]
c<-c(1,3,4,5)
c=as.character(c)
class(c)
c
b=c(222,333,333,111,5,666)
b=as.matrix(b)
b
t(b)
length(b)
#########sorting and ordering##################
sort(I$MonthlyIncome)[1:100]
sort(I$MonthlyIncome,decreasing = T)[1:5]
order(I$MonthlyIncome)
I$MonthlyIncome[514]
I$MonthlyIncome[205]
I1=I[order(I$MonthlyIncome),]
View(I1)
