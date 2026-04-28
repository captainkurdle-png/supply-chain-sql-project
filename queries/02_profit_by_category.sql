-- Query 2: Most profitable product categories
-- Insight: Fishing generates the highest total profit ($1.5M) driven by high order volume (34,650 orders).
-- Insight: Computers have the highest average profit per order ($157.59) despite low volume (884 orders) - high margin, low volume product.
-- Insight: Cleats and Camping & Hiking round out the top 3 by total profit.
-- Business recommendation: Consider increasing Computers stock/marketing given its exceptional margin.

SELECT Category_Name,
COUNT(*) AS total_orders,
ROUND(SUM(Order_Profit_Per_Order), 2) AS total_profit,
ROUND(AVG(Order_Profit_Per_Order), 2) AS avg_profit_per_order
FROM orders
GROUP BY Category_Name
ORDER BY total_profit DESC
LIMIT 10;
