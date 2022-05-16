SELECT customer_number
    FROM (
        SELECT customer_number, COUNT(1) AS order_number
            FROM Orders
        GROUP BY customer_number
            ORDER BY order_number DESC
    )
WHERE ROWNUM = 1