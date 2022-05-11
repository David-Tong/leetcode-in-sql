--- Oracle ---
SELECT id 
    FROM Person
WHERE id IN (
    SELECT MIN(id) 
        FROM Person
    GROUP BY email
        HAVING COUNT(email) > 1
    )
