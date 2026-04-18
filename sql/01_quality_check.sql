-- Quality check: NULL validation
SELECT
  COUNTIF(`Transaction ID` IS NULL) AS null_txn,
  COUNTIF(`Total Amount` IS NULL) AS null_total
FROM `your-project.retail_eda.retail_sales`
