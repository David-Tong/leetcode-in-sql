SELECT email 
    FROM (
        SELECT email, COUNT(1) AS email_count
            FROM Person
        GROUP BY email
    )
WHERE email_count > 1