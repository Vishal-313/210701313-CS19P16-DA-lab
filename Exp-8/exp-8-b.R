install.packages("rpart")
library(rpart)
data(iris)
set.seed(123) # For reproducibility
sample_indices <- sample(1:nrow(iris), 0.7 * nrow(iris))
train_data <- iris[sample_indices, ]
test_data <- iris[-sample_indices, ]
tree_model <- rpart(Species ~ ., data = train_data, method = "class")
summary(tree_model)
plot(tree_model)
text(tree_model, pretty = 0)
predictions <- predict(tree_model, newdata = test_data, type = "class")
confusion_matrix <- table(Predicted = predictions, Actual = test_data$Species)
print(confusion_matrix)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
cat("Accuracy:", accuracy * 100, "%\n")
