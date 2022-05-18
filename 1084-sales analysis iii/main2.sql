SELECT DISTINCT P.product_id, P.product_name
    FROM Sales S
INNER JOIN Product P
    ON S.product_id = P.product_id
WHERE S.sale_date >= TO_DATE('2019-01-01', 'YYYY-MM-DD')
    AND S.sale_date <= TO_DATE('2019-03-31', 'YYYY-MM-DD')
AND P.product_id NOT IN (
        SELECT S2.product_id
            FROM Sales S2
        WHERE S2.sale_date < TO_DATE('2019-01-01', 'YYYY-MM-DD')
            OR S2.sale_date > TO_DATE('2019-03-31', 'YYYY-MM-DD')
    )