library(ggplot2)
ggplot(data = iris, aes(x = Species)) +
 geom_bar(fill = "steelblue") +
 labs(title = "Count of Different Species in Iris Dataset", 
  x = "Species", 
  y = "Count") +
 theme_minimal()