# Boruta-feature-selection
## 🔍 Feature Selection with Boruta

![Boruta Feature Importance](boruta%20feature%20important_nayeem_6.png)

When building predictive models like **Neural Networks**, **Random Forest**, or **Logistic Regression**, having **too many features** (e.g., 60–70 variables) can:

- Increase **training time**
- Introduce **noise**
- Reduce **accuracy**

To address this, we use **Boruta**, a robust feature selection algorithm.

---

### 🌲 What is Boruta?

> Named after the **Slavic god of the forest**, Boruta is a feature selection method built on **Random Forest**. It helps identify all relevant variables in your dataset by comparing original features to randomized ones.

---

### ⚙️ How Boruta Works

1. **Shadow Features**: For each original feature, a "shadow" feature is created by shuffling its values (to add randomness).
2. **Model Training**: A Random Forest classifier is trained on both original and shadow features.
3. **Feature Evaluation**:
   - If a real feature performs **worse than a shadow feature**, it is **rejected**.
   - If it performs **better**, it is **confirmed** as important.

---

### 📊 Interpreting the Boruta Plot

- ✅ **Green Boxes**: Confirmed important features — **Keep these**
- ❌ **Red Boxes**: Rejected features — **Remove these**
- 🔵 **Blue Boxes**: Shadow features — used for benchmarking only

---

### ✅ Why Use Boruta?

- Removes **irrelevant** or **redundant** variables
- Improves **model performance** and reduces **overfitting**
- Makes the model **simpler**, **faster**, and more **interpretable**

---

### 🧪 Sample Code (in R)

```r
# Load packages
library(Boruta)

# Import your dataset
data <- read.csv("your_dataset.csv")

# Run Boruta
set.seed(123)
boruta_result <- Boruta(target_variable ~ ., data = data, doTrace = 2)

# Get selected attributes
selected_features <- getSelectedAttributes(boruta_result, withTentative = TRUE)

# Plot the result
plot(boruta_result, las = 2, cex.axis = 0.7)
```

> Replace `target_variable` with the actual column you're trying to predict.

---



