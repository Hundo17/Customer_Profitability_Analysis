# Customer Profitability Analysis  
End-to-End Analytics Project Using Python, SQL, Power BI, and Excel

## 1. Overview
This project delivers a full customer profitability analysis using a multi-tool analytics workflow. The objective is to identify valuable customer segments, understand the behavioral and demographic factors driving profitability, and create executive-ready dashboards to support strategic decision-making.

The work spans four tools—Python, SQL, Power BI, and Excel—to demonstrate a complete analytics lifecycle: data ingestion, cleaning, modeling, querying, visualization, and business interpretation.

## 2. Business Objective
A retail organization needs to understand which customers deliver the highest value and why. Key questions include:

- Which customers generate the highest lifetime value?  
- What demographic and behavioral factors predict spending?  
- How do customers cluster into meaningful, actionable segments?  
- Which customer groups should be prioritized for marketing and retention efforts?  
- How can insights be delivered clearly through dashboards and reporting?

This project produces a data-driven segmentation and profitability framework to answer these questions.

## 3. Project Workflow

### Data Cleaning & Preparation (Python)
- Standardized categorical and date fields.  
- Corrected outliers and missing values.  
- Engineered new metrics including Total Spend, Total Purchases, Customer Value Score, and High-Value Flag.  
- Exported cleaned datasets for SQL, Power BI, and Excel.

### Exploratory Data Analysis (Python)
- Distribution analysis for spending, demographics, and engagement.  
- Correlation analysis to identify drivers of profitability.  
- Visual exploration of spend patterns and customer behavior.

### Predictive Modeling (Python)
- Linear regression to predict Total Spend.  
- Statistical validation using R² and MAE.  
- Interpretation of the strongest spend drivers (income, frequency, recency).

### Relational Modeling & Querying (SQL)
- Created structured tables for customers and marketing activity.  
- Wrote analytical SQL queries for segmentation, customer ranking, and behavioral summaries.  
- Confirmed cluster results and regression trends using SQL outputs.

### Dashboard Development (Power BI)
- Connected directly to SQL tables.  
- Built KPI cards, segmentation visuals, and cluster summaries.  
- Provided interactive demographics and spend filters.

### Excel Dashboard & Modeling
- Built KPI summary using Excel formulas and structured references.  
- Created pivot tables and pivot charts for segmentation and spend analysis.  
- Implemented a Customer Lookup Tool using lookup functions.  
- Added regression insight summaries and final cluster profiles.  
- Designed a polished, presentation-ready dashboard.

## 4. Data Engineering & Feature Creation
Key engineered fields include:

- **Total_Spend** – Summed spending across all product categories.  
- **Total_Purchases** – Combined store, web, and catalog purchases.  
- **Customer_Value_Score** – Weighted composite score based on spend, recency, and frequency.  
- **High_Value_Flag** – Identifies top 20% of customers based on value score.  
- **Cluster** – Four distinct customer segments via k-means clustering.

These features form the core of the profitability and segmentation analysis.

## 5. Predictive Modeling Summary
Regression modeling revealed the following:

- Income is a significant and strong predictor of customer spending.  
- Purchase frequency is the most reliable behavioral driver of customer value.  
- Recency contributes moderately, with more recent customers showing higher value.  
- Age has a mild positive impact but is not a major predictor.  
- Model achieved **R² ≈ 0.75**, indicating strong explanatory power.

## 6. Customer Segmentation
Unsupervised clustering produced four clear segments:

- **Cluster 2 – High-Value Premium Customers**  
  Highest spend, high engagement, strong income. Top priority for retention and premium offers.

- **Cluster 1 – Affluent Consistent Spenders**  
  High income and frequent purchases. Good candidates for loyalty and cross-sell programs.

- **Cluster 0 – Mid-Market Occasional Buyers**  
  Moderate spend and engagement. Responsive to promotional strategies.

- **Cluster 3 – Budget-Constrained Low-Engagers**  
  Lowest income and lowest spend. Minimal return on intensive marketing spend.

## 7. Dashboards

### Power BI Dashboard  
Includes:
- Total Customers  
- Average Spend  
- Median Income  
- Average Customer Age  
- High-Value Customer Percentage  
- Spend & Count by Segment  
- Interactive filters  
- Cluster persona summaries  

Designed for interactive exploration and business presentations.

### Excel Dashboard  
Includes:
- KPI summary  
- Pivot-based segmentation visuals  
- Customer Lookup Tool  
- Regression insight text  
- Cluster segment summary table  
- Clean and structured dashboard layout  

Designed to demonstrate Excel modeling and analytical reporting capabilities.

## 8. Key Insights
- High-income, high-engagement customers generate the majority of revenue.  
- Engagement (purchase frequency) is the strongest driver of customer value.  
- Clear segmentation reveals a premium customer group that should receive targeted retention strategies.  
- Low-engagement customers show limited ROI for heavy marketing investment.  
- High-value clusters offer the greatest opportunity for personalized marketing and loyalty programs.

## 9. What This Project Demonstrates
This project showcases capability in:

- Working with large, unstructured datasets  
- Python-based data cleaning, feature engineering, and predictive modeling  
- SQL-based relational modeling and analytical queries  
- Dashboard development in Power BI and Excel  
- Statistical reasoning and segmentation methodology  
- Communicating insights clearly to business stakeholders  
- Delivering a full end-to-end analytics project from raw data to executive reporting  

This reflects the skills required for data analyst, business analyst, marketing analyst, and customer insights roles.

## 10. Repository Structure
```bash
data/
raw/
cleaned/
python/
sql/
powerbi/
excel/
docs/
README.md
```