SELECT name 
    FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT SalesPerson.sales_id 
        FROM SalesPerson, Company, Orders
    WHERE SalesPerson.sales_id = Orders.sales_id
        AND Company.com_id = Orders.com_id
    AND Company.name = 'RED'
)