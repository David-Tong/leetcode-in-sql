SELECT id, 'Root' AS type
    FROM Tree
WHERE p_id IS NULL
    UNION
SELECT id, 'Inner' As type
    FROM Tree
WHERE id IN (
    SELECT DISTINCT p_id 
        FROM Tree
    WHERE p_id IS NOT NULL
    ) AND
p_id IS NOT NULL
    UNION
SELECT id, 'Leaf' As type
    FROM Tree
WHERE id NOT IN (
    SELECT DISTINCT p_id 
        FROM Tree
    WHERE p_id IS NOT NULL
    ) AND    
p_id IS NOT NULL