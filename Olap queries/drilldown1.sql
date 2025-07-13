SELECT 
    d.month,
    SUM(f.sales_amount) AS total_sales
FROM 
    fact_sales f
JOIN 
    product_dim p ON f.product_key = p.product_key
JOIN 
    date_dim d ON f.date_key = d.date_key
WHERE 
    p.category = 'Clothing'
    AND d.year = 2023
GROUP BY 
    d.month
ORDER BY 
    d.month;
