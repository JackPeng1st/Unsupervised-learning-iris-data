library(NbClust)

data=iris[,-5]
NbClust(data,distance="euclidean",min.nc=2,max.nc=6,method="kmeans",index="all")

NbClust

#有11種分群指標表示使用三群是最好的數量