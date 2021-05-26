## Find the customers that are also employees
SELECT 
        e.ID, e.first_name, e.last_name
    FROM
        customer c, employee e
    WHERE
        c.first_name = e.first_name
            AND c.last_name = e.last_name
            AND c.email = e.email