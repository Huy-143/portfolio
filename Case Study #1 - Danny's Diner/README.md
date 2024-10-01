#### 1. What is the total amount each customer spent at the restaurant?
```sql
SELECT
  customer_id,
  SUM(price) AS total_spent
FROM sales s
JOIN menu m ON s.product_id = m.product_id
GROUP BY customer_id
```

The query returns the following: 

| customer_id | total_spent |
| --- | --- |
| A | 76 |
| B | 74 |
| C | 36 |

Result: 
- Customer A spent in total €76 at the Diner
- Customer B spent in total €74 at the Diner
- Customer C spent in total €36 at the Diner
