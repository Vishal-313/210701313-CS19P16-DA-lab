library(ggplot2)
ggplot(data = iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
 geom_boxplot() + # Adds box plot
 labs(title = "Box Plot of Sepal Length by Species", 
  x = "Species", 
  y = "Sepal Length (cm)") +
 theme_minimal()