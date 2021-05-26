## Find all employees that are not trainers and their phone numbers
SELECT 
    e.*, ep.phone_number
FROM
    employee_phones ep,
    (SELECT 
        e.*
    FROM
        employee e
    LEFT JOIN trainer t ON e.ID = t.employee_ID
    WHERE
        t.employee_ID IS NULL) AS e
WHERE
    ep.employee_ID = e.ID