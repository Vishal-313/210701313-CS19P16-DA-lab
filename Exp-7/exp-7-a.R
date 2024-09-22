data(mtcars)
mtcars$am <- factor(mtcars$am, levels = c(0, 1), labels = c("Automatic", "Manual"))
logistic_model <- glm(am ~ mpg, data = mtcars, family = binomial)
print(summary(logistic_model))
predicted_probs <- predict(logistic_model, type = "response")
print(predicted_probs)
plot(mtcars$mpg, as.numeric(mtcars$am) - 1,
 main = "Logistic Regression: Transmission vs. MPG",
 xlab = "Miles Per Gallon (mpg)",
 ylab = "Probability of Manual Transmission",
 pch = 19, col = "blue")
curve(predict(logistic_model, data.frame(mpg = x), type = "response"), 
 add = TRUE, col = "red", lwd = 2)