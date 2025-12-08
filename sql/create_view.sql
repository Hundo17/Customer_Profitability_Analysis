CREATE OR REPLACE VIEW public.customer_analysis_view AS
SELECT
  c.customerid,
  c."Year_Birth",
  c."Education",
  c."Marital_Status",
  c."Income",
  c."Kidhome",
  c."Teenhome",
  c."Dt_Customer",
  mc."Recency",
  mc."MntWines",
  mc."MntFruits",
  mc."MntMeatProducts",
  mc."MntFishProducts",
  mc."MntSweetProducts",
  mc."MntGoldProds",
  mc."NumDealsPurchases",
  mc."NumWebPurchases",
  mc."NumCatalogPurchases",
  mc."NumStorePurchases",
  mc."NumWebVisitsMonth",
  mc."AcceptedCmp1",
  mc."AcceptedCmp2",
  mc."AcceptedCmp3",
  mc."AcceptedCmp4",
  mc."AcceptedCmp5",
  mc."Response",
  mc."Complain",
  mc."Z_CostContact",
  mc."Z_Revenue"
FROM public.customers c
JOIN public.marketing_campaigns mc
  ON c.customerid = mc.customerid;

-- Validate the view
SELECT COUNT(*) AS total_records FROM public.customer_analysis_view;
SELECT * FROM public.customer_analysis_view LIMIT 5;