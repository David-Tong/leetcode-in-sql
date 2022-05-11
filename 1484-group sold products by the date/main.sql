SELECT TO_CHAR(TEMP.sell_date, 'yyyy-mm-dd') AS sell_date, 
    COUNT(TEMP.PRODUCT) AS num_sold, 
LISTAGG(TEMP.product, ',') WITHIN GROUP (ORDER BY sell_date) AS products
    FROM (SELECT DISTINCT sell_date, product FROM Activities) TEMP
GROUP BY TO_CHAR(TEMP.sell_date, 'yyyy-mm-dd')
    ORDER BY 1