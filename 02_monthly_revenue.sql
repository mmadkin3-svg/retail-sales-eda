SELECT
  FORMAT_DATE('%b %Y', DATE(Date))  AS month_label,
  EXTRACT(YEAR  FROM Date)            AS yr,
  EXTRACT(MONTH FROM Date)            AS mo,
  ROUND(SUM(Total_Amount), 2)         AS total_revenue,
  COUNT(*)                            AS transaction_count
FROM `circular-acumen-445903-j5.retail_eda.retail_sales`
GROUP BY 1, 2, 3
ORDER BY 2, 3