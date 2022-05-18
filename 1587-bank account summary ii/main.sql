SELECT U.name, S.balance
    FROM (
        SELECT account, SUM(amount) AS balance
            FROM Transactions
        GROUP BY account
    ) S 
INNER JOIN Users U
    ON S.account = U.account
WHERE S.balance > 10000