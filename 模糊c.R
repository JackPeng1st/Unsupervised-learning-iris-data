library("e1071")

x=rbind(iris$Sepal.Length,iris$Sepal.Width,iris$Petal.Length,iris$Petal.Width)
x=t(x)

result=cmeans(x,m=2,centers=3,iter.max=500,verbose=T,method="cmeans")

result

table(iris$Species,result$cluster)
