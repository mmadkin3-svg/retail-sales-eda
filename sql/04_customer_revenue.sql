SELECT
  Gender,
  CASE
    WHEN Age BETWEEN 18 AND 24 THEN '18-24'
    WHEN Age BETWEEN 25 AND 34 THEN '25-34'
    WHEN Age BETWEEN 35 AND 44 THEN '35-44'
    WHEN Age BETWEEN 45 AND 54 THEN '45-54'
    ELSE '55-64'
  END AS age_group,
  COUNT(*)                         AS transactions,
  ROUND(AVG(Total_Amount), 2)      AS avg_spend,
  ROUND(SUM(Total_Amount), 2)      AS total_spend
FROM `circular-acumen-445903-j5.retail_eda.retail_sales`
GROUP BY 1, 2
ORDER BY 1, 2
