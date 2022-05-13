SELECT Employees.employee_id 
    FROM Employees
LEFT JOIN Salaries
    ON Employees.employee_id = Salaries.employee_id
WHERE Salaries.salary is NULL
    UNION
SELECT Salaries.employee_id
    FROM Salaries
LEFT JOIN Employees
    ON Salaries.employee_id = Employees.employee_id
WHERE Employees.name is NULL