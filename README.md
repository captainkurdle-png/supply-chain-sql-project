# Supply Chain SQL Analysis
Analysis of 180,519 orders from the DataCo Supply Chain dataset using MySQL.

## Key Findings

### Query 1: Late Delivery Rate by Shipping Mode
| Shipping Mode | Total Orders | Late Deliveries | Late Delivery % |
|---|---|---|---|
| First Class | 55,628 | 53,026 | 95.32% |
| Second Class | 70,432 | 53,974 | 76.63% |
| Same Day | 19,474 | 8,908 | 45.74% |
| Standard Class | 215,504 | 82,046 | 38.07% |

### Query 2: Top 10 Most Profitable Product Categories
| Category | Total Orders | Total Profit | Avg Profit/Order |
|---|---|---|---|
| Fishing | 34,650 | $1,512,441 | $43.65 |
| Cleats | 49,102 | $989,273 | $20.15 |
| Camping & Hiking | 27,458 | $854,911 | $31.14 |
| Computers | 884 | $139,313 | $157.59 |

### Query 3: Late Delivery Rate by Region
| Region | Late Delivery % |
|---|---|
| Central Africa | 57.96% |
| South Asia | 56.27% |
| Canada | 48.80% (best) |

### Query 4: Delivery Gap by Shipping Mode
| Shipping Mode | Avg Actual Days | Avg Scheduled Days | Avg Delay Gap |
|---|---|---|---|
| Second Class | 3.99 | 2.00 | +1.99 days |
| First Class | 2.00 | 1.00 | +1.00 days |
| Same Day | 0.48 | 0.00 | +0.48 days |
| Standard Class | 4.00 | 4.00 | 0.00 days |

### Query 5: Sales and Profit by Customer Segment
| Segment | Total Orders | Total Sales | Avg Order Value | Total Profit |
|---|---|---|---|---|
| Consumer | 187,008 | $38,191,579 | $204.22 | $4,146,975 |
| Corporate | 109,578 | $22,336,813 | $203.84 | $2,405,149 |
| Home Office | 64,452 | $13,041,075 | $202.34 | $1,381,680 |

## Tools Used
- MySQL 8.0
- GitHub Codespaces / VS Code
