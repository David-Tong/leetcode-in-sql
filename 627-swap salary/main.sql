UPDATE Salary
    SET sex = 
        (CASE
            WHEN sex in ('m') THEN 'f'
            ELSE 'm'
        END)