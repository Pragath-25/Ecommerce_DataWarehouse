use ecommerce_dw;
SELECT 
    d.year,
    d.quarter,
    f.gender,
    SUM(f.sales_amount) AS total_sales
FROM 
    fact_sales f
JOIN 
    date_dim d ON f.date_key = d.date_key
WHERE 
    d.year = 2023
GROUP BY 
    d.year, d.quarter, f.gender
ORDER BY 
    d.year, d.quarter, f.gender;
