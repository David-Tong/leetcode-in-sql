SELECT TO_CHAR(UL.date_id, 'yyyy-mm-dd') AS date_id, UL.make_name, UL.unique_leads, UP.unique_partners
    FROM 
    (SELECT date_id, make_name, COUNT(1) AS unique_leads
        FROM ( 
            SELECT DISTINCT date_id, make_name, lead_id
                FROM DailySales
        )
    GROUP BY date_id, make_name) UL        
INNER JOIN         
    (SELECT date_id, make_name, COUNT(1) AS unique_partners
        FROM ( 
            SELECT DISTINCT date_id, make_name, partner_id
                FROM DailySales
        )
    GROUP BY date_id, make_name) UP 
ON UL.date_id = UP.date_id
    AND UL.make_name = UP.make_name