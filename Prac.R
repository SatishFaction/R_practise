v<-c(828,368,88,33,NA,244)
v
mean(v)
median(v)
sd(v)
is.na(v)
v[is.na(v)]
v[!is.na(v)]
mean(v,na.rm=T)
median(v,na.rm = T)
sd(v,na.rm = T)
#imputing missing data by mean
v[is.na(v)]=mean(v[!is.na(v)])
v
####working on the framingham data######
getwd()
setwd("C:\\Users\\ASUS\\Desktop\\R_Practise")
f=read.csv("framingham.csv")
dim(f)
str(f)
summary(f)
####complete case analysis####
complete.cases(f)[1:5]
cc=f[complete.cases(f),]
View(cc)
dim(cc)
dim(f)
summary(f$education)
hist(f$education,xlab = "Education Category",ylab = "Frequency",
     main = "Education Mode",col = "light blue")
table(f$education)
prop.table(table(f$education))
f$education[is.na(f$education)]=1
summary(f$education)
library(VIM)
f1=kNN(f)
f1[is.na(f1)]
summary(f1)
View(f1)
f1=subset(f,select =1:16 )
View(f1)
###########Session 4 revision##############
x<-4
class(x)
c="aananan"
class(c)
vi<-c("x","y",3)
vi
class(vi)
getwd()
c=read.csv("cars.csv")
dim(c)
class(c$MPG)
class(c$Origin)
z<-c(1,2,4,6,8)
a=as.matrix(z)
class(a)
class(z)
z[1]
z[2]
z[5]
a















