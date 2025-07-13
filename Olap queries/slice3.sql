SELECT 
    pay.payment_method, 
    SUM(f.sales_amount) AS total_sales
FROM 
    fact_sales f
JOIN 
    payment_dim pay ON f.payment_key = pay.payment_key
WHERE 
    pay.payment_method = 'Cash'
GROUP BY 
    pay.payment_method;
