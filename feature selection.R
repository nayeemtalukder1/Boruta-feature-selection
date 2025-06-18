

# Load required library
library(Boruta)

# Load the iris dataset
data(iris)
str(iris)

# Set seed for reproducibility
set.seed(123)

# Apply Boruta to identify important features for predicting Species
boruta_result <- Boruta(Species ~ ., data = iris, doTrace = 2)

# Get selected attributes including tentative ones
selected_boruta <- getSelectedAttributes(boruta_result, withTentative = TRUE)
print(selected_boruta)

# Show full Boruta result
print(boruta_result)

# Plot Boruta results
plot(boruta_result, xlab = "", main = "Boruta Feature Selection on Iris Dataset")
