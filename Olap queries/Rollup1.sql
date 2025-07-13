SELECT 
    YEAR(d.date_key) AS year,
    MONTH(d.date_key) AS month,
    SUM(s.sales_amount) AS total_sales
FROM 
    fact_sales s
JOIN 
    date_dim d ON s.date_key = d.date_key
GROUP BY 
    ROLLUP(YEAR(d.date_key), MONTH(d.date_key));
