-- Query 3: Late delivery rate by region
-- Insight: Central Africa has the highest late delivery rate at 57.96%.
-- Insight: Canada performs best at 48.80% late delivery rate.
-- Insight: All regions fall between 48-58% suggesting this is a company-wide issue, not region-specific.
-- Business recommendation: Focus operational improvements globally rather than targeting specific regions.

SELECT Order_Region,
COUNT(*) AS total_orders,
SUM(Late_delivery_risk) AS late_deliveries,
ROUND(SUM(Late_delivery_risk) / COUNT(*) * 100, 2) AS late_delivery_pct
FROM orders
GROUP BY Order_Region
ORDER BY late_delivery_pct DESC;
