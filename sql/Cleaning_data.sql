-- Handle missing income (replace with median)
UPDATE public.customers
SET "Income" = (
  SELECT PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Income")
  FROM public.customers
)
WHERE "Income" IS NULL;

-- Standardize customer join date format (Dt_Customer)
UPDATE public.customers
SET "Dt_Customer" = TO_CHAR(
  TO_DATE("Dt_Customer", 'YYYY-MM-DD'),
  'YYYY-MM-DD'
)
WHERE "Dt_Customer" ~ '^[0-9]{4}-[0-9]{2}-[0-9]{2}$';

-- Remove income outliers (over 200,000)
DELETE FROM public.customers
WHERE "Income" > 200000;

-- Confirm cleaning
SELECT
  COUNT(*) AS total_rows,
  COUNT("Income") AS non_null_incomes,
  ROUND(AVG("Income"), 2) AS avg_income,
  MIN("Income") AS min_income,
  MAX("Income") AS max_income
FROM public.customers;