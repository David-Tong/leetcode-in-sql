CREATE FUNCTION getNthHighestSalary(N IN NUMBER) 
RETURN NUMBER IS result NUMBER;
BEGIN
    /* Write your PL/SQL query statement below */
    SELECT NVL(S2.salary, NULL) INTO result
        FROM (
            SELECT S1.salary,
                ROWNUM AS RN
            FROM (
                SELECT DISTINCT salary 
                    FROM Employee
                WHERE salary IS NOT NULL
                    ORDER BY salary DESC
            ) S1
            WHERE ROWNUM <= N
        ) S2
    WHERE RN = N;
    RETURN result;
END;