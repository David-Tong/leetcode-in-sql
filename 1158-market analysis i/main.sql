SELECT U.user_id AS buyer_id, TO_CHAR(U.join_date, 'YYYY-MM-DD') AS join_date, 
    NVL(orders_in_2019, 0) AS orders_in_2019
FROM Users U
    LEFT JOIN (
        SELECT buyer_id, COUNT(1) AS orders_in_2019
            FROM Orders
        WHERE EXTRACT(YEAR FROM order_date) = 2019
            GROUP BY buyer_id
    ) S
ON U.user_id = S.buyer_id
    ORDER BY buyer_id