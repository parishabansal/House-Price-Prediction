# House-Price-Prediction

House Price Prediction Using Random Forest
This project focuses on building a robust Random Forest model to predict house prices using R. The dataset contains various features such as area, number of bedrooms, bathrooms, and other factors influencing house prices.

Table of Contents
Introduction
Dataset
Exploratory Data Analysis (EDA)
Model Building
Results and Insights
How to Run the Project
Future Scope
Acknowledgments
Introduction
The goal of this project is to predict house prices using a dataset containing key property characteristics. The Random Forest algorithm was chosen for its ability to handle both numerical and categorical features and provide accurate predictions.

This project highlights:

Comprehensive Exploratory Data Analysis (EDA).
Data preprocessing for missing values and encoding categorical variables.
Building and evaluating the Random Forest model.
Dataset
The dataset Housing.csv includes 13 features and 545 records. Key features are:

price: Target variable (house price).
area: Total area of the property.
bedrooms: Number of bedrooms.
bathrooms: Number of bathrooms.
stories: Number of stories.
parking: Parking spaces available.
Categorical features: mainroad, guestroom, basement, hotwaterheating, airconditioning, prefarea, furnishingstatus.
Exploratory Data Analysis (EDA)
Key steps performed during EDA:

Missing Value Check: No missing values detected.
Summary Statistics: Descriptive statistics for numerical features.
Visualizations:
Histograms for price distribution.
Boxplots for numerical features to identify outliers.
Count plots for categorical features to understand distribution.
Correlation heatmap to analyze relationships between numerical features.
Pairplot: Scatterplots to explore relationships between features.
Model Building
The Random Forest Regressor was used to predict house prices:

Data preprocessing:
One-hot encoding for categorical variables.
Splitting the dataset into training (80%) and testing (20%).

Model training:
randomForest package in R.
100 decision trees.

Model evaluation:
Mean Squared Error (MSE).
R-squared (R²) score.

Feature Importance:
Identified the most influential features affecting house prices.
Results and Insights

Mean Squared Error (MSE): Quantified the average squared error in predictions.

R-squared (R²): Explained variance of the model predictions.

Feature Importance:
Key predictors included area, bathrooms, and parking.

Learnings:
area and bathrooms are strong predictors of house price.
Properties near a mainroad or with airconditioning often have higher prices.

How to Run the Project
Ensure the following R libraries are installed:
R
Copy code
install.packages(c("ggplot2", "randomForest", "corrplot", "caret"))
Load the dataset Housing.csv in RStudio or an R environment.
Run the provided R script to perform EDA and train the Random Forest model.

Future Scope
Implement other machine learning algorithms for comparison (e.g., Gradient Boosting).
Extend the dataset with additional features like location, property age, and amenities.
Deploy the model using Shiny for a web-based application.

Acknowledgments
Dataset courtesy of Housing.csv (details about the dataset source, if applicable).
Libraries used: ggplot2, randomForest, corrplot, caret.
