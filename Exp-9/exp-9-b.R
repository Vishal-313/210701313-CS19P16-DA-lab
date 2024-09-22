install.packages("ggplot2")
library(ggplot2)
data(iris)
iris_data <- iris[, -5]
iris_scaled <- scale(iris_data)
set.seed(123) 
k <- 3 
kmeans_result <- kmeans(iris_scaled, centers = k, nstart = 25)
print(kmeans_result)
print(kmeans_result$centers)
iris$Cluster <- as.factor(kmeans_result$cluster)
head(iris)
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Cluster)) +
 geom_point(size = 3) +
 labs(title = "K-Means Clustering of Iris Dataset", x = "Sepal Length", y = "Sepal Width")
