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
- Customer A spent €76 in total at the Diner
- Customer B spent €74 in total at the Diner
- Customer C spent €36 in total at the Diner
