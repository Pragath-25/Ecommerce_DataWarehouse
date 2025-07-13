SELECT
     p.category,
     SUM(f.sales_amount) AS total_sales
FROM
	fact_sales f
JOIN
    product_dim p ON f.product_key = p.product_key
GROUP BY
    ROLLUP(p.category);