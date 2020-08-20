library(MASS)

mu = c(1,2)
sigma1 = matrix(c(1,0,0,2),nr = 2, byrow = T)
sigma1
sigma2 = matrix(c(5,1,1,2),nr = 2, byrow = T)
sigma2
sigma3 = matrix(c(5,2,2,2),nr = 2, byrow = T)
sigma3
sigma4 = matrix(c(5,2,2,1),nr = 2, byrow = T)
sigma4

N = 200

X1 = mvrnorm(N, mu, Sigma = sigma1)
X2 = mvrnorm(N, mu, Sigma = sigma2)
X3 = mvrnorm(N, mu, Sigma = sigma3)
X4 = mvrnorm(N, mu, Sigma = sigma4)


par(mfrow = c(2,2))
plot(X1[,1],X1[,2], xlab = "X1", ylab = "x2",
     main = "Scatterplot 1")

plot(X2[,1],X2[,2], xlab = "X1", ylab = "x2",
     main = "Scatterplot 2")

plot(X3[,1],X3[,2], xlab = "X1", ylab = "x2",
     main = "Scatterplot 3")

plot(X4[,1],X4[,2], xlab = "X1", ylab = "x2",
     main = "Scatterplot 4")
