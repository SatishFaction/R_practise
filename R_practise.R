#R practise from Statistical Learning Book
#Creating a vector in R
x=c(1,2,3,4,5,40)   #c stands for concatenate 
x
y=c(21,18,17,1,13,1) #we can add two vectors but the lenght of the vectors should be same
#leghth function

length(y)
length(x)

#Adding two vectors
z=x+y
z
ls()  #function allows us to list objects such as data and funtions we have saved so far
rm(a) #used to 

#The Matrix function
M=matrix(x,nrow = 2,ncol = 2)
M  #bydefault R creates matrices by successively filling in columns
N=matrix(y,3,2,byrow = TRUE)
N
#The sqrt function
sqrt(x)
sqrt(100)
#square root of matrix
sqrt(N)
#the power operator
x^2
set.seed(123)
n=rnorm(50)
n
p=n+rnorm(50,mean = 50,sd = .1)
cor(n,p)
