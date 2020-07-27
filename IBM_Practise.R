getwd()
setwd("C:\\Users\\ASUS\\Desktop\\R_Sessions")
IB=read.csv("IBM.csv")
dim(IB)
nrow(IB)
ncol(IB)
str(IB)
summary(IB)
length(IB)
a<-c(88,22,44,63,67)
b<-c(1,8,32,5,6)
a[a<50]
a[1]
for (i in 1:length(a))
{
  print(i)
}
sum(a[a>50])
length(a[a>50])
length(a[a>=20 & a<=70])
a[a<50 | a>60]
b[a==88]
a[b==32]
#####Vector subsetting###########333
a[1:3]
a[c(1,4)]
a[c(1,2)]
IB$Gender[IB$MonthlyIncome==max(IB$MonthlyIncome)]
max(IB$MonthlyIncome)
min(IB$MonthlyIncome)
IB$Gender[IB$MonthlyIncome==min(IB$MonthlyIncome)]
quantile(IB$MonthlyIncome)
unique(IB$Department)
mean(IB$MonthlyIncome[IB$Department=='Sales'])
for(i in c('Sales','Research & Development','Human Resources'))
{
  print(paste((mean(IB$MonthlyIncome[IB$Department==i])),i))
}
########Sampling###########
?sample
sample(IB,10,replace = F)
library(MASS)
data("Boston")
ncol(Boston)
nrow(Boston)
View(Boston)
sample(Boston$rm,size = 1,replace = F)
a
b
cbind(a,b)
cbind(b,a)
rbind(a,b)
matrix(a,nrow = 5,ncol = 1,byrow = T)
matrix(c(1,2,3,4,5,6),nrow = 3,ncol = 2)
matrix(c(1,2,3,4,5,6),nrow = 3,ncol = 2,byrow = T)
c<-c("p","q","r","s","t")
c
cbind(a,b,c)
cbind(a,b)
#########
data.frame(a,b,c)
m=matrix(c(88,22,55,68,33,77),nrow = 2,ncol = 3,byrow = T)
m[1,1]
m[1,2]
m[nrow(m),ncol(m)]
dim(m)
m[1,]
m[,1]
m[,2]
sum(m[1,])
sum(m[,1])
#########
getwd()
c=read.csv("cars.csv")
nrow(c)
c[1:4,1:4]
c[,c("MPG")]
c[sample(1:406,5),]
sample(1:50,10,replace = T)
##B. Conditional Subsetting

#PROBLEM (Reference: cars.csv)

# a) Extract all the information of the cars which has MPG more than 40
length(c[c$MPG>40,])
c[c$MPG>40,]

# b) Extract the information of the car/s which has only 3 cylinders

c[c$Cylinders==3,]
View(c)
length(c[c$Cylinders==3,])
# c) Extract the information of all the cars originated in Europe and has 
# Acceleration more than 20



# d) Name the cars which has MPG more than 40 and Acceleration less than 20 or
# the car has three cylinders




#=======================================================================================================
#4. MORE ON INFORMATION RETRIEVAL
#=======================================================================================================

# Using the subet() function

#PROBLEM (Reference: cars.csv)

# a) Extract all the information of the cars which has MPG more than 40

?subset
subset(c[c$MPG>40,])
subset(c,c$MPG>40)

# b) Extract the information of the car/s which has only 3 cylinders

subset(c,c$Cylinders==3)

# c) Extract the information of all the cars originated in Europe and has Acceleration more than 20

subset(c,c$Origin=='Europe'&c$Acceleration>20)

# d) Name the cars which has MPG more than 40 and Acceleration less than 20 or the car has three cylinders

subset(c,c$MPG>40&c$Acceleration<20|c$Cylinders==3)
########################################################################
getwd()
names(IB)
summary(IB$Gender)
summary(IB$MonthlyIncome)
summary(IB$Education)
by(IB$MonthlyIncome,IB$Gender,FUN = mean)
by(IB$MonthlyIncome,IB$Gender,FUN = summary)
t_output=tapply(IB$MonthlyIncome,IB$Department,FUN = mean)
by_output=by(IB$MonthlyIncome,IB$Gender,FUN = summary)
by_output[2]
for(i in t_output)
  print(i)

table(IB$Gender)
prop.table(table(IB$Gender))
nrow(IB)
prop.table(table(IB$Attrition))
prop.table(table(IB$Department))
table(IB$Department,IB$MonthlyIncome)
?table
table(IB$Education)
round(prop.table(table(IB$EducationField)*100),2)
################Visualization###################################
hist(IB$MonthlyIncome,xlab = "Monthly Income",
     ylab = "Frequency",main = "HIsTOGRAM OF iNCOME",col = "LIGHT BLUE")
names(IB)
boxplot(IB$MonthlyIncome)
boxplot(IB$MonthlyIncome,ylab="Monthly Income",main="Boxplot of Income",col = "maroon")
boxplot(IB$MonthlyIncome,horizontal = T,
        xlab="Monthly Income",main="Boxplot of Income",col = "purple")
boxplot(IB$MonthlyIncome~IB$Gender,
        ylab = "Monthly Income",main="Box plot of Income by gender",col="light blue")
plot(IB$PercentSalaryHike,IB$MonthlyIncome,xlab = "Salary Hike",
     ylab = "Monthly Income")

names(IB)
summary(IB$PercentSalaryHike)
barplot(IB$Gender,IB$MonthlyIncome)
data=IB[,20:25]
plot(data)
barplot(table(IB$Gender,IB$MonthlyIncome))
?barplot
