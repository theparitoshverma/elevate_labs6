
-- 1. Monthly Revenue and Order Volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM Orders
GROUP BY year, month
ORDER BY year, month;
