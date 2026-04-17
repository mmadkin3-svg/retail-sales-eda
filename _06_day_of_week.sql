SELECT
  FORMAT_DATE('%A', DATE(Date))  AS day_name,
  EXTRACT(DAYOFWEEK FROM Date)    AS day_num,
  COUNT(*)                        AS transactions,
  ROUND(AVG(Total_Amount), 2)     AS avg_spend
FROM `circular-acumen-445903-j5.retail_eda.retail_sales`
GROUP BY 1, 2
ORDER BY 2