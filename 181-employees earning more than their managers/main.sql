SELECT E1.name AS Employee
    FROM Employee E1
INNER JOIN Employee E2
    ON E1.managerId = E2.id
WHERE E1.salary > E2.salary
    AND E1.managerId IS NOT NULL