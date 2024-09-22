library(ggplot2)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
 geom_point(size = 3) + labs(title = "Scatter Plot of Sepal Dimensions", 
 x = "Sepal Length (cm)", 
 y = "Sepal Width (cm)") + theme_minimal() 