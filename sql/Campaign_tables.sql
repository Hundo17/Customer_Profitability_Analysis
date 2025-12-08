CREATE TABLE public.customers AS
SELECT DISTINCT
  "ID" AS CustomerID,
  "Year_Birth",
  "Education",
  "Marital_Status",
  "Income",
  "Kidhome",
  "Teenhome",
  "Dt_Customer"
FROM public.marketing_campaign_raw;

ALTER TABLE public.customers
ADD PRIMARY KEY (CustomerID);

CREATE TABLE public.marketing_campaigns AS
SELECT
  "ID" AS CustomerID,
  "Recency",
  "MntWines",
  "MntFruits",
  "MntMeatProducts",
  "MntFishProducts",
  "MntSweetProducts",
  "MntGoldProds",
  "NumDealsPurchases",
  "NumWebPurchases",
  "NumCatalogPurchases",
  "NumStorePurchases",
  "NumWebVisitsMonth",
  "AcceptedCmp1",
  "AcceptedCmp2",
  "AcceptedCmp3",
  "AcceptedCmp4",
  "AcceptedCmp5",
  "Response",
  "Complain",
  "Z_CostContact",
  "Z_Revenue"
FROM public.marketing_campaign_raw;

ALTER TABLE public.marketing_campaigns
ADD CONSTRAINT fk_customer
FOREIGN KEY (CustomerID)
REFERENCES public.customers (CustomerID);