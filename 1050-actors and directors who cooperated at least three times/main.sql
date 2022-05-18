SELECT actor_id, director_id
    FROM (
        SELECT actor_id, director_id, COUNT(1) as cooperations
            FROM ActorDirector
        GROUP BY actor_id, director_id
    )
WHERE cooperations >= 3