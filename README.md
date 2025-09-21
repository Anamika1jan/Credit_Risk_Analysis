# Credit_Risk_Analysis

📑 SQL Project Report: Credit Risk Analysis
🔹 1. Project Overview

Business Problem:
Banks and financial institutions face challenges in assessing loan applicants’ risk profiles. Poor credit risk assessment can lead to higher defaults and financial losses.

Objective:
Analyze client data to identify risk patterns, evaluate default probability, and provide insights into loan approval decisions using SQL queries.

🔹 2. Dataset Description

Dataset: credit_risk_dataset.csv (5,000 records)

Key Columns:

Client_ID – Unique identifier

Age – Age of client

Gender – Male/Female

Marital_Status – Single, Married, Divorced, Widowed

Education – Education level

Employment_Status – Employed, Self-Employed, Unemployed, Retired

Annual_Income – Client’s yearly income

Loan_Amount – Loan applied for

Loan_Term_Months – Loan duration in months

Credit_Score – Credit score (300–850)

Housing_Status – Own, Rent, Mortgage

Default_History – Previous default (0 = No, 1 = Yes)

Current_Loan_Status – Approved, Rejected, Closed, Ongoing

Previous_Loans – Number of past loans

Overdue_Amount – Amount overdue

Late_Payments – Number of late payments

Bank_Balance – Current account balance

Default_Risk – Low, Medium, High

**🔹 3. SQL Analysis**
✅ Basic Analysis

Count total clients

Average loan amounts

Distribution of employment status

✅ Intermediate Analysis

Average credit score by marital status

Top 10 overdue clients

Loan approval vs rejection by income level

✅ Advanced Analysis

Risk distribution by employment

Relation between late payments & default history

Clients most likely to default (high risk, low credit score, overdue)

Loan approval rate by education level

**🔹 4. Business Insights
**
Credit Score vs Default Risk

Low credit scores strongly correlate with high default risk.

Employment Stability Matters

Unemployed and self-employed clients have higher rejection and default rates.

Education Level Impact

Higher education levels show better loan approval rates.

Overdue & Late Payments

Clients with repeated late payments and overdue amounts are more likely to fall in the "High Risk" category.

🔹 5. Recommendations

Prioritize loan approvals for clients with stable jobs, good credit scores, and no overdue history.

Implement stricter checks for clients with multiple previous loans & high overdue balances.

Consider financial literacy programs for high-risk clients with low education levels.
