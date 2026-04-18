SELECT
  Gender,
  Product_Category,
  COUNT(*)                         AS transactions,
  ROUND(AVG(Total_Amount), 2)      AS avg_spend,
  ROUND(SUM(Total_Amount), 2)      AS total_revenue
FROM `circular-acumen-445903-j5.retail_eda.retail_sales`
GROUP BY 1, 2
ORDER BY 1, 2
