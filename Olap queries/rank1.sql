SELECT 
    p.product_id, 
    p.category, 
    SUM(f.sales_amount) AS total_sales,
    RANK() OVER (ORDER BY SUM(f.sales_amount) DESC) AS sales_rank
FROM 
    fact_sales f
JOIN 
    product_dim p ON f.product_key = p.product_key
WHERE 
    p.category = 'Clothing'
GROUP BY 
    p.product_id, p.category
ORDER BY 
    sales_rank;
