ibm<-read.csv("IBM.csv")
getwd()
setwd("C:\\Users\\ASUS\\Desktop\\R_Sessions")
print("Satish Kumar")
for(i in 1:5)
{
  print("Satish Kumar")
}
length(1:5)
x<-c(2,5,6,7)
for(i in 1:length(x))
{
  print(x[i])
}
for(i in x)
  print(i)
####paste funtion#########
paste("Satish","Kumar")
paste("Satish",sep = "---","Kumar")
for(i in c("Satish","Kumar","Pandey"))
{
  print(paste("Happy birthday",i,sep = "---"))
}
##########IBM EDA Automation###############
nrow(ibm)
ncol(ibm)
library(MASS)
data(Boston)
View(Boston)
Boston[,1]
mean(Boston[,1])
for(i in 1:ncol(Boston))
{
  print(mean(Boston[,i]))
}
ncol(Boston)
for(i in 1:ncol(Boston))
{
  print(paste(names(Boston)[i],mean(Boston[,i])))
}
for(i in 1:ncol(Boston))
{
  print(paste(names(Boston)[i],round(mean(Boston[,i]),2),sep = ": "))
}
for(i in names(Boston))
{
  print(paste(i,round(mean(Boston[,i]),2),sep = "----"))
}
#######Functions############
sum<-function(a,b)
{
  if(!is.numeric(a)|!is.numeric(b))
  {
    stop("a and b should be numeric")
  }
  tot<-a+b
  return(tot)
}

sum(a,"ss")

Hi<-function(a)
{
  print(paste("Hi",a,sep = "--"))
}

Hi("Satish")

























