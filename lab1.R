#TASK 1

A <- matrix(c(1,1,2,1,0,1,0,2,2),nrow = 3,ncol = 3, byrow = T)
B <- matrix(c(-1,5,1,1,3,2),3,2,byrow = T)

#Transpose of A
t(A)

#diagonal of A
diag(A)

#A.T * A
t(A) %*% A #Matrix multiplication is given by %*%

#A.T * B
t(A) %*% B

#Q2
(D <- A^3) #Element wise 
(E <- A %*% A %*% A) #Matrix wise
D == E



#Q3
#Dimensions of A
dim(A)

#Trace
sum(diag(A))

#Eigen values and vectors
EE <- eigen(A)

#Eigen Values
Eval <- EE$values
#Eigen vector
Evec <- EE$vectors

Eval
Evec

#First eigen vector
(v1 <- Evec[,1])
#Second eigen vector
(v2 <- Evec[,2])
#Third Eigen vector
(v3 <- Evec[,3])

(lambda1 <- Eval[1])
(lambda2 <- Eval[2])
(lambda3 <- Eval[3])

library(Matrix)
rankMatrix(A)[1]


#TASK 2
rating <- read.csv(file = file.choose())

class(rating)
X = as.matrix(rating[,2:25])

head(X)

#Q4
(barX <- colMeans(X))
(covX <- cov(X))
(corx <- cor(X))

#Q5
pairs(X[,1:10],pch= ".")






