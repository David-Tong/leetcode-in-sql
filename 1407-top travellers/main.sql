SELECT U.name, NVL(S.travelled_distance, 0) AS travelled_distance
    FROM Users U
LEFT JOIN (
    SELECT user_id, SUM(distance) AS travelled_distance
        FROM Rides
    GROUP BY user_id
) S
    ON U.id = S.user_id
ORDER BY NVL(S.travelled_distance, 0) DESC, U.name