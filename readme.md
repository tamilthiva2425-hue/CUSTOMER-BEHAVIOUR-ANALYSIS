# Customer Behaviour Analytics

## Project Overview

This project analyzes customer behaviour, purchasing patterns, spending habits, and marketing campaign responses using data analytics techniques.

The goal is to identify meaningful customer trends and provide business insights that can support customer segmentation, marketing decisions, and revenue-focused strategies.

## Business Objectives

- Understand customer purchasing behaviour
- Analyze customer spending patterns
- Measure marketing campaign response
- Compare customer behaviour across age groups
- Analyze spending by education and marital status
- Examine spending patterns across income groups
- Identify customer segments with stronger engagement

## Dataset

The dataset contains customer demographic, purchasing, website activity, and marketing campaign information.

Key attributes include:

- Customer ID
- Year of Birth
- Education
- Marital Status
- Income
- Kidhome and Teenhome
- Customer Registration Date
- Recency
- Product Purchases
- Web Visits and Purchases
- Store Purchases
- Catalog Purchases
- Campaign Responses
- Total Spending
- Total Purchases

## Data Analytics Workflow

Raw Customer Data  
↓  
Python Data Cleaning  
↓  
Exploratory Data Analysis  
↓  
MySQL Database  
↓  
SQL Business Analysis  
↓  
Power BI Dashboard  
↓  
Business Insights

## Tools & Technologies

- Python
- Pandas
- MySQL
- SQL
- Power BI
- Git & GitHub

## Project Structure

```text
CUSTOMER-BEHAVIOUR-ANALYSIS/
│
├── data/
│   ├── raw/
│   │   └── marketing_campaign.csv
│   └── processed/
│       └── customer_behaviour_cleaned.csv
│
├── database/
│   └── schema.sql
│
├── sql/
│   └── analysis_queries.sql
│
├── src/
│   ├── clean.py
│   ├── eda.py
│   └── database.py
│
├── powerbi/
│   └── CBA_dashboard.pbix
│
└── readme.md
Data Cleaning

The dataset was cleaned and validated using Python.

Results:

2,237 customer records
32 columns
0 missing values
0 duplicate records

The cleaned dataset was saved for further analysis and visualization.

SQL Analysis

SQL was used to answer business questions including:

What is the overall campaign response rate?
How does response rate vary by age group?
How does income relate to customer spending?
How does spending differ by education level?
How does spending vary by marital status?
How does customer response change with recency?
How does campaign acceptance relate to response rate?
Which customer segments show stronger purchasing behaviour?
Power BI Dashboard

The dashboard provides an executive-level view of customer behaviour.

Key KPIs
Total Customers: 2,237
Average Customer Spending: 605.74
Campaign Response Rate: 14.93%
Average Purchases per Customer: 12.54
Dashboard Analysis

The dashboard includes:

Average Spending by Education
Response Rate by Age Group
Average Spending by Marital Status
Average Spending by Income Group
Education Filter for interactive analysis
Key Insights
Customer spending varies significantly across income groups.
Higher-income customers demonstrate substantially higher average spending.
Campaign response differs across age groups.
Customers with different education levels show different spending patterns.
Marital status is associated with noticeable differences in average spending.
Customers contacted more recently show stronger campaign response rates.
Business Recommendations
Prioritize high-income customer segments for premium and high-value offers.
Focus campaign targeting on age groups with stronger response rates.
Use customer education and marital-status segments for more personalized campaigns.
Re-engage customers with longer periods since their last interaction.
Use purchasing behaviour to identify high-value customer segments.

Conclusion

This project demonstrates an end-to-end customer analytics workflow, combining Python, SQL, MySQL, and Power BI to transform raw customer data into actionable business insights.

The final dashboard enables decision-makers to explore customer segments, spending behaviour, and campaign performance through interactive visual analysis.
