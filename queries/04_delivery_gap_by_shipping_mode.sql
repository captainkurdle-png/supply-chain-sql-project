-- Query 4: Average delivery gap (actual vs scheduled days) by shipping mode
-- Insight: Standard Class delivers exactly on schedule with 0.00 average delay gap.
-- Insight: Second Class has the worst delay gap at nearly 2 full days late on average.
-- Insight: First Class is consistently 1 day late on average, compounding its high late delivery rate from Query 1.
-- Business recommendation: Second Class shipping needs urgent operational review - customers are paying for a faster service but receiving it nearly 2 days late.

SELECT Shipping_Mode,
ROUND(AVG(Days_for_shipping_real), 2) AS avg_actual_days,
ROUND(AVG(Days_for_shipment_scheduled), 2) AS avg_scheduled_days,
ROUND(AVG(Days_for_shipping_real - Days_for_shipment_scheduled), 2) AS avg_delay_gap
FROM orders
GROUP BY Shipping_Mode
ORDER BY avg_delay_gap DESC;
