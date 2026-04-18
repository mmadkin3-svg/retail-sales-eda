-- Quality check: NULL validation
SELECT
COUNTIF(Transaction_ID   IS NULL) AS null_txn_id,
  COUNTIF(Date             IS NULL) AS null_date,
  COUNTIF(Customer_ID      IS NULL) AS null_cust,
  COUNTIF(Gender           IS NULL) AS null_gender,
  COUNTIF(Age              IS NULL) AS null_age,
  COUNTIF(Product_Category IS NULL) AS null_category,
  COUNTIF(Quantity         IS NULL) AS null_qty,
  COUNTIF(Price_per_Unit   IS NULL) AS null_price,
  COUNTIF(Total_Amount     IS NULL) AS null_total
FROM `your-project.retail_eda.retail_sales`
