SELECT TO_CHAR(event_day, 'YYYY-MM-DD') AS day, emp_id, SUM(spent_time) AS total_time
    FROM (
        SELECT emp_id, event_day, (out_time - in_time) AS spent_time
            FROM Employees 
    )
GROUP BY emp_id, event_day