SELECT TO_CHAR(activity_date, 'YYYY-MM-DD') AS day, COUNT(1) AS active_users
    FROM (
        SELECT DISTINCT user_id, activity_date
            FROM Activity
        WHERE activity_date > TO_DATE('2019-07-27', 'YYYY-MM-DD') - 30
            AND activity_date <= TO_DATE('2019-07-27', 'YYYY-MM-DD')
    )
GROUP BY activity_date