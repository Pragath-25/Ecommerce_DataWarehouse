SELECT 
    p.payment_method,
    SUM(f.sales_amount) AS total_sales,
    RANK() OVER (ORDER BY SUM(f.sales_amount) DESC) AS sales_rank
FROM 
    fact_sales f
JOIN 
    payment_dim p ON f.payment_key = p.payment_key
JOIN 
    date_dim d ON f.date_key = d.date_key
WHERE 
    d.year = 2023
GROUP BY 
    p.payment_method
ORDER BY 
    sales_rank;
