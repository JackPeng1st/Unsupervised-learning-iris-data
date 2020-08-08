np=ceiling(0.1*nrow(iris))
index=sample(1:nrow(iris),np)

iris_sample=iris[index,]

iris_sample$Species=NULL

hc=hclust(dist(iris_sample),method="single")

plot(hc, labels=iris$Species[index])

rect.hclust(hc,k=3)
