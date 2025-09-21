select * from credit_clients;


-- ## 🔹 **Basic SQL Queries**

-- 1. Count total records

SELECT COUNT(*) AS total_clients
FROM credit_clients;

-- 2. View first 10 clients
SELECT * 
FROM credit_clients
LIMIT 10;

-- 3. Find average loan amount

SELECT AVG(Loan_Amount) AS avg_loan
FROM credit_clients;

-- 4. Get distinct employment statuses

SELECT DISTINCT Employment_Status
FROM credit_clients;

## 🔹 Intermediate SQL Queries

-- 5. Average credit score by marital status

SELECT Marital_Status, AVG(Credit_Score) AS avg_score
FROM credit_clients
GROUP BY Marital_Status;

-- 6. Top 10 clients with highest overdue amount

SELECT Client_ID, Overdue_Amount, Loan_Amount
FROM credit_clients
ORDER BY Overdue_Amount DESC
LIMIT 10;

-- 7. Count of clients by default history

SELECT Default_History, COUNT(*) AS client_count
FROM credit_clients
GROUP BY Default_History;

-- 8. Average annual income of approved vs rejected loans

SELECT Current_Loan_Status, AVG(Annual_Income) AS avg_income
FROM credit_clients
WHERE Current_Loan_Status IN ('Approved', 'Rejected')
GROUP BY Current_Loan_Status;

## 🔹 Advanced SQL Queries

-- 9. Find risk distribution by employment status

SELECT Employment_Status, Default_Risk, COUNT(*) AS count_risk
FROM credit_clients
GROUP BY Employment_Status, Default_Risk
ORDER BY Employment_Status, Default_Risk;

-- 10. Find correlation between late payments and default history

SELECT Default_History, AVG(Late_Payments) AS avg_late_payments
FROM credit_clients
GROUP BY Default_History;

-- 11. **Clients most likely to default (high risk + low credit score + overdue loans)**

SELECT Client_ID, Credit_Score, Default_Risk, Overdue_Amount
FROM credit_clients
WHERE Default_Risk = 'High'
  AND Credit_Score < 600
  AND Overdue_Amount > 0
ORDER BY Overdue_Amount DESC;

-- 12. Loan approval rate by education level

SELECT Education, 
       SUM(CASE WHEN Current_Loan_Status = 'Approved' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS approval_rate
FROM credit_clients
GROUP BY Education
ORDER BY approval_rate DESC;

-- 13. Find clients with more than 3 previous loans and still ongoing loans

SELECT Client_ID, Previous_Loans, Current_Loan_Status
FROM credit_clients
WHERE Previous_Loans > 3
  AND Current_Loan_Status = 'Ongoing';
