y7# Importing Dataset
dataset = read.csv("Admission_Predict.csv")

# Slicing data
data = dataset[,2:9]

# Importing Data Splitting library
library(caTools)

# Generating random numbers
set.seed(123)

# Data Splitting
split = sample.split(data$Chance.of.Admit, SplitRatio = 0.8)

# Training data
training_set = subset(data, split==TRUE)
View(training_set)

# Testing Data
testing_set = subset(data, split==FALSE)
View(testing_set)

# Applying Regression
regressor = lm(formula = Chance.of.Admit~., data = training_set)

# Prediction
y_pred = predict(regressor, newdata = testing_set)
View(y_pred)

# Visualization
plot(testing_set$Chance.of.Admit, type = 'o', col = 'blue', 
     xlab = 'Test Data', ylab = 'COA')

lines(y_pred, type = 'o', col = 'red')