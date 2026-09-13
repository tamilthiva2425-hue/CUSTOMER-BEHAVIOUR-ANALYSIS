USE customer_behaviour;

-- 1. Overall customer overview
SELECT
    COUNT(*) AS total_customers,
    ROUND(AVG(Age), 1) AS avg_age,
    ROUND(AVG(Income), 2) AS avg_income,
    ROUND(AVG(Total_Spending), 2) AS avg_spending
FROM customers;


-- 2. Top customers by spending
SELECT
    ID,
    Income,
    Total_Spending,
    Total_Purchases
FROM customers
ORDER BY Total_Spending DESC
LIMIT 10;


-- 3. Spending by education
SELECT
    Education,
    COUNT(*) AS customers,
    ROUND(AVG(Income), 2) AS avg_income,
    ROUND(AVG(Total_Spending), 2) AS avg_spending
FROM customers
GROUP BY Education
ORDER BY avg_spending DESC;


-- 4. Spending by marital status
SELECT
    Marital_Status,
    COUNT(*) AS customers,
    ROUND(AVG(Total_Spending), 2) AS avg_spending
FROM customers
GROUP BY Marital_Status
ORDER BY avg_spending DESC;


-- 5. Purchase channel performance
SELECT
    ROUND(AVG(NumWebPurchases), 2) AS avg_web_purchases,
    ROUND(AVG(NumCatalogPurchases), 2) AS avg_catalog_purchases,
    ROUND(AVG(NumStorePurchases), 2) AS avg_store_purchases
FROM customers;


-- 6. Campaign acceptance
SELECT
    SUM(AcceptedCmp1) AS Campaign1,
    SUM(AcceptedCmp2) AS Campaign2,
    SUM(AcceptedCmp3) AS Campaign3,
    SUM(AcceptedCmp4) AS Campaign4,
    SUM(AcceptedCmp5) AS Campaign5
FROM customers;


-- 7. Response rate
SELECT
    SUM(Response) AS responders,
    COUNT(*) AS total_customers,
    ROUND(100.0 * SUM(Response) / COUNT(*), 2) AS response_rate_pct
FROM customers;


-- 8. Response by income level
SELECT
    CASE
        WHEN Income < 30000 THEN 'Low Income'
        WHEN Income < 60000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS income_group,
    COUNT(*) AS customers,
    ROUND(100.0 * SUM(Response) / COUNT(*), 2) AS response_rate_pct
FROM customers
GROUP BY income_group
ORDER BY response_rate_pct DESC;


-- 9. Response by age group
SELECT
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age < 45 THEN '30-44'
        WHEN Age < 60 THEN '45-59'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS customers,
    ROUND(100.0 * SUM(Response) / COUNT(*), 2) AS response_rate_pct
FROM customers
GROUP BY age_group
ORDER BY response_rate_pct DESC;


-- 10. Customer engagement
SELECT
    ROUND(AVG(NumWebVisitsMonth), 2) AS avg_web_visits,
    ROUND(AVG(NumWebPurchases), 2) AS avg_web_purchases,
    ROUND(AVG(NumStorePurchases), 2) AS avg_store_purchases,
    ROUND(AVG(NumCatalogPurchases), 2) AS avg_catalog_purchases
FROM customers;


-- 11. Campaign acceptance vs response
SELECT
    Campaigns_Accepted,
    COUNT(*) AS customers,
    SUM(Response) AS responders,
    ROUND(100.0 * SUM(Response) / COUNT(*), 2) AS response_rate_pct
FROM customers
GROUP BY Campaigns_Accepted
ORDER BY Campaigns_Accepted;


-- 12. Recency vs customer response
SELECT
    CASE
        WHEN Recency <= 30 THEN '0-30 Days'
        WHEN Recency <= 60 THEN '31-60 Days'
        WHEN Recency <= 90 THEN '61-90 Days'
        ELSE '90+ Days'
    END AS recency_group,
    COUNT(*) AS customers,
    ROUND(100.0 * SUM(Response) / COUNT(*), 2) AS response_rate_pct
FROM customers
GROUP BY recency_group
ORDER BY response_rate_pct DESC;