file_path <- "C:/Users/Parisha Bansal/Downloads/Housing.csv"

# Import the dataset
df <- read.csv(file_path)

# View the data
head(data)
# Load the required library
library(randomForest)

# Encode categorical variables (Convert to factors if needed)
data$mainroad <- as.factor(data$mainroad)
data$guestroom <- as.factor(data$guestroom)
data$basement <- as.factor(data$basement)
data$hotwaterheating <- as.factor(data$hotwaterheating)
data$airconditioning <- as.factor(data$airconditioning)
data$prefarea <- as.factor(data$prefarea)
data$furnishingstatus <- as.factor(data$furnishingstatus)

# Split the data into training and testing sets
set.seed(42)
trainIndex <- createDataPartition(data$price, p = 0.8, list = FALSE)
trainData <- data[trainIndex, ]
testData <- data[-trainIndex, ]

# Train a Random Forest model
rf_model <- randomForest(price ~ ., data = trainData, ntree = 100, importance = TRUE)

# Predict on the test set
predictions <- predict(rf_model, testData)

# Evaluate the model
mse <- mean((predictions - testData$price)^2)
r_squared <- cor(predictions, testData$price)^2

cat("Mean Squared Error: ", mse, "\n")
cat("R-squared: ", r_squared, "\n")

# Feature importance
importance <- importance(rf_model)
varImpPlot(rf_model)
