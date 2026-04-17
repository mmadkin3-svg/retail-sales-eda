SELECT
  Product_Category,
  COUNT(*)                             AS transactions,
  ROUND(SUM(Total_Amount), 2)          AS total_revenue,
  ROUND(AVG(Total_Amount), 2)          AS avg_order_value,
  ROUND(AVG(Quantity), 2)              AS avg_quantity,
  ROUND(AVG(Price_per_Unit), 2)        AS avg_unit_price,
  ROUND(MAX(Total_Amount), 2)          AS max_order_value
FROM `circular-acumen-445903-j5.retail_eda.retail_sales`
GROUP BY 1
ORDER BY total_revenue DESC
