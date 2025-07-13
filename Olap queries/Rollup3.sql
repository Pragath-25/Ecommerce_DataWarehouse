SELECT
    f.shopping_mall,
    d.month,
    SUM(f.sales_amount) AS total_sales
FROM
    fact_sales f
JOIN
    date_dim d ON f.date_key = d.date_key
GROUP BY
    ROLLUP(f.shopping_mall, d.month);