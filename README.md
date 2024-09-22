# Advanced Predictive Analytics System
![ANS1](https://github.com/user-attachments/assets/df88aa55-be94-4029-8da2-4633a2395dd9)

## Project Overview

The **Advanced Predictive Analytics System** is designed to predict **health insurance charges** using a comprehensive dataset. The aim of this project is to develop a predictive model to estimate insurance costs based on a variety of factors such as age, BMI, smoking status, region, and number of children. This system leverages machine learning techniques to generate insights and improve the accuracy of insurance charge predictions.

## Tools and Technologies
- **MySQL**: Used for data storage and querying.
- **Power BI**: For data visualization and uncovering actionable insights from exploratory data analysis (EDA).
- **Python (Scikit-learn, PyCaret, Lazy Predict)**: Employed for model building and evaluation.
- **Streamlit**: Used to deploy the predictive model as a web application.

## Dataset

The dataset used in this project is a popular health insurance dataset containing the following columns:
- `age`: Age of the policyholder.
- `sex`: Gender of the policyholder.
- `bmi`: Body Mass Index, a measure of body fat.
- `children`: Number of children covered by health insurance.
- `smoker`: Smoking status (yes/no).
- `region`: Geographic region (e.g., southeast, northwest).
- `charges`: Health insurance charges (target variable).

## Exploratory Data Analysis (EDA)

### 1. Summary Statistics and Distributions
- The distribution of insurance charges was analyzed, revealing the following:
  - **Upper whisker (maximum)**: \$34,617.84
  - **Q3 (third quartile)**: \$16,687.36
  - **Q2 (median)**: \$9,382.03
  - **Q1 (first quartile)**: \$4,733.64
  - **Lower whisker (minimum)**: \$1,121.87
- Outliers were identified in the charges dataset, with a total of **139 outliers** and **1,199 normal entries**.
- The **BMI distribution** showed a normal (Gaussian) shape.
- The **age distribution** ranged from 18 to 64, with no outliers.

### 2. Correlation Analysis
- **BMI vs Age**: Weak correlation (R² = 0.0119).
- **Charges vs Age**: Slight correlation (R² = 0.0894).
- **Charges vs BMI**: Slight correlation (R² = 0.0393).
- **Charges vs Number of Children**: Very weak correlation (R² = 0.0046).

### 3. Charges Analysis Across Different Categories
- **Average charges by gender**:
  - Male: \$13,957
  - Female: \$12,570
- **Average charges by smoker status**:
  - Male smokers: \$32,050
  - Female smokers: \$8,434
- **Average charges by region**:
  - Northeast: \$13,406
  - Northwest: \$12,418
  - Southeast: \$14,735
  - Southwest: \$12,347
- **Average charges by BMI category**:
  - Normally distributed data: \$9,928
  - Outliers: \$42,104

### 4. Trends and Patterns in Charges Over Age
- A positive correlation was observed between age and charges, with charges increasing as age rises.

### 5. Impact of Number of Children on Charges
- The number of children does not significantly impact insurance charges, as shown by the weak correlation.

## Next Steps: Predictive Modeling

The insights gained from the EDA will inform the predictive modeling phase. In the next stage, machine learning algorithms will be used to predict health insurance charges. The modeling approach will involve:

- **Preprocessing**: Handling outliers, feature scaling, and encoding categorical variables.
- **Model Building**: Using linear regression, decision trees, random forest, and more.
- **Model Comparison**: Comparing model performance using traditional methods and PyCaret.
- **Model Deployment**: Deploying the best-performing model on Streamlit for easy access and usability.

## Conclusion

This project highlights the initial analysis and insights derived from the health insurance dataset. The next step involves building and refining the machine learning model to accurately predict insurance charges. The system, once complete, will be capable of providing accurate predictions and insights that can drive strategic decision-making in the insurance industry.

---

### How to Run

1. Clone the repository.
2. Install the required Python libraries: `pip install -r requirements.txt`.
3. Load the dataset into MySQL or use the provided CSV file.
4. Run the Power BI report to explore the EDA findings.
5. Run the Jupyter notebooks for the preprocessing and model building steps.
6. Deploy the final model on Streamlit.

### Contact
Feel free to reach out for collaboration or feedback on this project.

---

This README covers your project's current stage and outlines the future steps for modeling. It’s structured to give potential recruiters or collaborators a clear understanding of the project and the tools you’ve used.
