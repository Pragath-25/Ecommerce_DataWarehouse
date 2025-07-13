SELECT 
    f.shopping_mall,
    pay.payment_method,
    SUM(f.sales_amount) AS total_sales
FROM 
    fact_sales f
JOIN 
    payment_dim pay ON f.payment_key = pay.payment_key
GROUP BY 
    f.shopping_mall, pay.payment_method
ORDER BY 
    f.shopping_mall, pay.payment_method;
