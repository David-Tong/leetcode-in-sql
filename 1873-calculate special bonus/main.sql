SELECT employee_id, 
    (CASE 
        WHEN MOD(employee_id, 2) = 1 AND NAME NOT LIKE 'M%' THEN salary
        ELSE 0
    END) bonus
FROM Employees
    ORDER BY employee_id