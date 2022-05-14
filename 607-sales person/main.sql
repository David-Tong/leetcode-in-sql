SELECT A.id
    FROM Weather A, Weather B
WHERE A.recordDate = B.recordDate + 1
    AND A.temperature > B.temperature