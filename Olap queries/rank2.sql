SELECT 
     f.shopping_mall,
     SUM(f.sales_amount) AS total_sales,
     RANK() OVER (ORDER BY SUM(f.sales_amount) DESC) AS mall_rank
FROM
     fact_sales f
GROUP BY
     f.shopping_mall
ORDER BY
     mall_rank
LIMIT 5;
     