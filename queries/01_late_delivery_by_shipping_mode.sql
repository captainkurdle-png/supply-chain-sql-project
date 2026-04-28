-- Query 1: Late delivery rate by shipping mode
SELECT Shipping_Mode,
COUNT(*) AS total_orders,
SUM(Late_delivery_risk) AS late_deliveries,
ROUND(SUM(Late_delivery_risk) / COUNT(*) * 100, 2) AS late_delivery_pct
FROM orders
GROUP BY Shipping_Mode
ORDER BY late_delivery_pct DESC;
