-- Query 5: Sales and profit by customer segment
-- Insight: Consumer segment dominates with $38.2M total sales and $4.1M profit across 187,008 orders.
-- Insight: All three segments have nearly identical average order values (~$202-204) - volume drives the difference, not spend per order.
-- Insight: Home Office is the smallest segment but maintains the same order value as larger segments.
-- Business recommendation: Focus customer acquisition on Consumer segment to drive volume, as spend per order is consistent across all segments.

SELECT Customer_Segment,
COUNT(*) AS total_orders,
ROUND(SUM(Sales), 2) AS total_sales,
ROUND(AVG(Sales), 2) AS avg_sales_per_order,
ROUND(SUM(Order_Profit_Per_Order), 2) AS total_profit
FROM orders
GROUP BY Customer_Segment
ORDER BY total_sales DESC;
