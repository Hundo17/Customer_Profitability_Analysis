-- Demographic summary
SELECT
  "Education",
  "Marital_Status",
  COUNT(*) AS num_customers,
  ROUND(AVG("Income")) AS avg_income
FROM public.customer_analysis_view
GROUP BY "Education", "Marital_Status"
ORDER BY avg_income DESC;

-- Campaign response rate
SELECT
  SUM("Response")::float / COUNT(*) AS response_rate
FROM public.customer_analysis_view;

-- Top spenders
SELECT
  customerid,
  ("MntWines" + "MntMeatProducts" + "MntGoldProds") AS total_high_value_spend
FROM public.customer_analysis_view
ORDER BY total_high_value_spend DESC
LIMIT 10;

-- Recency summary
SELECT
  ROUND(AVG("Recency"), 2) AS avg_recency,
  MIN("Recency") AS min_recency,
  MAX("Recency") AS max_recency
FROM public.customer_analysis_view;