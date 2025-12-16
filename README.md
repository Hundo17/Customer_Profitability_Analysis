# Customer Profitability Analysis
End-to-End Analytics Business Case (Python, SQL, Power BI, Excel)

## Business Context

A mid-sized retail organization operates under a fixed marketing and retention budget while facing rising customer acquisition costs and increased competition. Although the company collects extensive customer-level data, leadership lacks clarity on which customers drive long-term profitability, which behaviors influence value most, and how limited marketing resources should be allocated.

This project simulates a real-world customer analytics engagement, delivering a data-driven framework to support customer prioritization, retention strategy, and marketing ROI optimization.

## Business Objective

The objective is to maximize customer lifetime value and marketing efficiency by answering the following decision-focused questions:

- Which customer segments contribute most to revenue and long-term value?
- Which demographic and behavioral factors most strongly influence profitability?
- Where should retention investment be prioritized versus reduced?
- How can customer insights be delivered clearly to business stakeholders?

## Analytical and Technical Execution

To support executive-level decision-making, the analysis was implemented using a multi-tool analytics workflow aligned with real enterprise data environments.

### Data Preparation and Feature Engineering (Python)

- Cleaned and standardized demographic and behavioral data using pandas
- Engineered core profitability metrics:
  - Total Spend
  - Purchase Frequency
  - Customer Value Score (weighted composite)
  - High-Value Customer Flag (top 20%)
- Exported structured datasets for SQL querying, BI reporting, and Excel analysis

### Exploratory and Predictive Analysis (Python)

- Performed distribution and correlation analysis to identify key drivers of customer value
- Built a linear regression model to quantify the influence of income, purchase frequency, recency, and age
- Evaluated model performance using R² and MAE (R² ≈ 0.75)

### Relational Modeling and Validation (SQL)

- Designed normalized customer and activity tables
- Wrote analytical SQL queries using joins, aggregations, and window functions
- Validated modeling and segmentation insights directly from the database layer

### Executive Reporting and Delivery

- Power BI dashboards designed for executive KPI monitoring and customer segmentation analysis
- Excel dashboard providing pivot-based summaries and a customer lookup tool for operational use
- Outputs structured to support both strategic planning and day-to-day decision-making

## Customer Segmentation and Strategic Actions

Unsupervised clustering identified four distinct customer segments:

### Cluster 2 — High-Value Premium Customers
Recommended Action: Prioritize retention, loyalty programs, and personalized offers  
Rationale: Small segment with disproportionate revenue contribution  
Risk of Inaction: High revenue exposure if churn increases

### Cluster 1 — Affluent Consistent Spenders
Recommended Action: Focus on cross-sell and upsell initiatives  
Rationale: Strong income and purchase frequency with expansion potential  
Opportunity: Increase average order value without additional acquisition cost

### Cluster 0 — Mid-Market Occasional Buyers
Recommended Action: Deploy targeted promotions during high-intent periods  
Rationale: Responsive to incentives but price sensitive  
Tradeoff: Diminishing ROI when over-targeted

### Cluster 3 — Budget-Constrained Low-Engagers
Recommended Action: Minimize intensive marketing investment  
Rationale: Low lifetime value and weak engagement  
Impact: Cost savings can be reallocated to higher-ROI segments

## Business Impact and Tradeoffs

- Reallocating marketing spend toward high-value customers improves ROI without increasing budget
- Incremental retention gains among premium customers outperform broad promotional strategies
- Strategic tradeoffs favor long-term profitability over short-term customer reach

## Executive Dashboards and Tools

- Power BI Executive Overview Dashboard: https://github.com/Hundo17/Customer_Profitability_Analysis/blob/main/powerbi/Customer_Profitability_Analysis_SC1.png

- Power BI Customer Segmentation Dashboard: https://github.com/Hundo17/Customer_Profitability_Analysis/blob/main/powerbi/Customer_Profitability_Analysis_SC2.png

- Excel Executive Summary and Customer Lookup Tool: https://github.com/Hundo17/Customer_Profitability_Analysis/blob/main/excel/CustomerData.xlsx

## Technical Stack Summary

Python (pandas, scikit-learn)  
SQL (Postgres via Supabase)  
Power BI  
Excel  
Git and GitHub

## What This Project Demonstrates

- End-to-end customer analytics execution
- Business-driven segmentation and predictive modeling
- SQL-based validation and relational reasoning
- Executive-ready reporting and stakeholder communication
- Translation of analytics into actionable business decisions