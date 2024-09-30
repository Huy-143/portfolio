-- What is the total amount each customer spent at the restaurant?

SELECT
	customer_id,
    SUM(price) AS total_spent
FROM sales s
JOIN menu m ON s.product_id = m.product_id
GROUP BY customer_id

