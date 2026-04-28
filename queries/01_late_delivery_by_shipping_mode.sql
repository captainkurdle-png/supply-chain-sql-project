-- Query 1: Late delivery rate by shipping mode
-- Insight: First Class has the highest late delivery rate at 95.32% - counterintuitive given it is a premium service.
-- Insight: Standard Class performs best with only 38.07% late delivery rate despite being the slowest option.
-- Insight: Same Day shipping has a 45.74% late delivery rate suggesting operational challenges with urgent orders.
-- Business recommendation: Investigate why First Class is underperforming - this is a serious service quality issue that could damage customer trust.

SELECT Shipping_Mode,
COUNT(*) AS total_orders,
SUM(Late_delivery_risk) AS late_deliveries,
ROUND(SUM(Late_delivery_risk) / COUNT(*) * 100, 2) AS late_delivery_pct
FROM orders
GROUP BY Shipping_Mode
ORDER BY late_delivery_pct DESC;
