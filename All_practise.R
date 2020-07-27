getwd()
setwd("C:\\Users\\ASUS\\Desktop\\R_Sessions")
cars=read.csv("cars.csv")
View(cars)
##box plots
boxplot(cars$MPG~cars$Origin)
#barcharts
prop.table(cars$Origin)
table(cars$Origin)
barplot(table(cars$Origin),col = "green")
barplot(table(cars$Origin),col = c("green","blue","red"))
barplot(prop.table(cars$Origin),col = "green")
barplot(table(cars$Origin,cars$Cylinders))
barplot(table(cars$Origin,cars$Cylinders),col=c("gold"),beside = T)
prop.table(cars$Origin)
###Scatter plot
plot(cars$Weight,cars$MPG,xlab = "Weight of the Car",ylab = "MPG of the car",
     main = "Association between Weight and MPG")

plot(cars$Weight,cars$MPG,xlab = "Weight of the Car",ylab = "MPG of the car",
     main = "Association between Weight and MPG",type = "l")#used for time series data

plot(cars$Weight,cars$MPG,xlab = "Weight of the Car",ylab = "MPG of the car",
     main = "Association between Weight and MPG",type = "b")#used for time series data

plot(cars$Weight,cars$MPG,xlab = "Weight of the Car",ylab = "MPG of the car",
     main = "Association between Weight and MPG",pch=20)#used for time series data
 ##highlighting values
cars$Weight[cars$MPG==46.6]
v=cars$Weight[cars$MPG==0]
class(v)
max(cars$MPG)
points(x=cars$Weight[cars$MPG==46.6],y=max(cars$MPG),pch=0,cex=1.5,col="red")
