#### Entity Relationship Diagram
![image](https://github.com/user-attachments/assets/a8963b72-371c-4fa0-811f-051429addcb2)


#### 1. What is the total amount each customer spent at the restaurant?
```sql
SELECT
  customer_id,
  SUM(price) AS total_spent
FROM sales s
JOIN menu m ON s.product_id = m.product_id
GROUP BY customer_id
```

**Explanation** 
To answer this question we want the query to return the customer and the amount they have spent. Since the prices are stored in the `menu` table and the actual transactions (e.g., products sold) are in the `sales` table, we need to join these two tables to calculate the total amount spent by each customer. The query ends with the `GROUP BY` function as aggregations require the non aggregated parts to be included here, to avoid ambiguity.

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

#### 2. How many days has each customer visited the restaurant?
```sql
```




#### 3. What was the first item from the menu purchased by each customer?
