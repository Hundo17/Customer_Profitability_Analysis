-- Drop the foreign key constraint temporarily
ALTER TABLE public.marketing_campaigns
DROP CONSTRAINT fk_customer;

-- Delete the campaign record(s) linked to the customer whose income is over 200,000
DELETE FROM public.marketing_campaigns
WHERE customerid IN (
  SELECT customerid
  FROM public.customers
  WHERE "Income" > 200000
);

-- Delete that outlier customer
DELETE FROM public.customers
WHERE "Income" > 200000;

-- Re-add the foreign key constraint
ALTER TABLE public.marketing_campaigns
ADD CONSTRAINT fk_customer
FOREIGN KEY (customerid)
REFERENCES public.customers (customerid);

-- Verify the cleanup
SELECT COUNT(*) AS total_rows,
       MAX("Income") AS max_income
FROM public.customers;