create database ecommerce_db;
use ecommerce_db;

#Import data from csv file
select* from clean_ecommerce_churn;



#Count Total rows.
SELECT count(*) AS Total_rows FROM clean_ecommerce_churn;
SELECT * FROM clean_ecommerce_churn LIMIT 10;

#High-Level Business Summary
#Overall Business KPIs (Executive Summary)
SELECT 
    COUNT(CustomerID) AS Total_customers,
    SUM(Churn) AS Total_Churned_Customers,
    COUNT(CustomerID) - SUM(Churn) AS Retained_Customers,
    ROUND((SUM(Churn) * 100 / COUNT(CustomerID)), 2) AS Churn_rate_pct,
    ROUND(AVG(CashbackAmount), 2) AS Avg_Cashback_Amount,
    ROUND(AVG(Tenure), 1) AS Avg_Tenure_Months
FROM clean_ecommerce_churn;



###Categorical & Risk Analysis
#1.Tenure Group
SELECT 
    Tenure_Group,
    COUNT(CustomerID) AS Total_customers,
    SUM(Churn) AS Total_Churned_Customers,
    ROUND((SUM(Churn) * 100 / COUNT(CustomerID)), 2) AS Churn_rate_pct
FROM clean_ecommerce_churn
GROUP BY Tenure_Group
ORDER BY Churn_rate_pct DESC;


#Churn Analysis by Product Category & Payment Method
SELECT 
    PreferedOrderCat,
    PreferredPaymentMode,
    COUNT(CustomerID) AS Total_customers,
    SUM(Churn) AS Total_Churned_Customers,
    ROUND(AVG(Churn) * 100, 2) AS Churn_rate_pct
FROM clean_ecommerce_churn
GROUP BY PreferedOrderCat, PreferredPaymentMode
HAVING COUNT(CustomerID) > 50
ORDER BY Churn_Rate_pct DESC;

#3.Preferred Payment Mode & Category
SELECT 
    PreferredPaymentMode,
    PreferedOrderCat,
    COUNT(CustomerID) AS Total_Customers,
    ROUND((SUM(Churn) * 100 / COUNT(CustomerID)), 2) AS Churn_rate_pct
FROM clean_ecommerce_churn
GROUP BY PreferredPaymentMode, PreferedOrderCat
ORDER BY Churn_rate_pct DESC;


#Customer Complaint vs Churn Rate
SELECT 
    Complain,
    CASE WHEN Complain = 1 THEN 'Raised Complaint' ELSE 'No Complaint' END AS Complaint_Status,
    COUNT(CustomerID) AS Total_Customers,
    SUM(Churn) AS Total_Churned_Customers,
    ROUND((SUM(Churn) * 100 / COUNT(CustomerID)), 2) AS Churn_rate_pct
FROM clean_ecommerce_churn
GROUP BY Complain;


#Distance & App Usage Risk Segment (Multi-condition Filtering)
SELECT 
    Distance_Group ,
    COUNT(CustomerID) AS Total_Customers,
    SUM(Churn) AS Churned_Customers,
    ROUND(AVG(Churn) * 100, 2) AS Churn_Rate_Pct
FROM clean_ecommerce_churn
GROUP BY Distance_Group;


#High-Risk Customer View
CREATE VIEW high_risk_customers AS
SELECT 
    CustomerID,
    Tenure,
    CityTier,
    WarehouseToHome,
    Complain,
    DaySinceLastOrder,
    CashbackAmount
FROM clean_ecommerce_churn
WHERE Churn = 0 
  AND Complain = 1 
  AND DaySinceLastOrder > 7;
  