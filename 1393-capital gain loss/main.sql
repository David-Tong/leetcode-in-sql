SELECT A.stock_name, (A.total - B.total) AS capital_gain_loss
    FROM (
        SELECT stock_name, operation, SUM(price) AS total
            FROM Stocks
        GROUP BY stock_name, operation
    ) A, 
    (
        SELECT stock_name, operation, SUM(price) AS total
            FROM Stocks
        GROUP BY stock_name, operation
    ) B
WHERE A.stock_name = B.stock_name
    AND A.operation = 'Sell'
AND B.operation = 'Buy'