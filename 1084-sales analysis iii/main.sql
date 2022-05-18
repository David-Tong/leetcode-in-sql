SELECT DISTINCT P.product_id, P.product_name
    FROM Sales S
LEFT JOIN Product P
    ON S.product_id = P.product_id
WHERE S.sale_date BETWEEN '2019-01-01' AND '2019-03-31'
    AND S.product_id NOT IN (
        SELECT S2.product_id
            FROM Sales S2
        WHERE S2.sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31'
    )