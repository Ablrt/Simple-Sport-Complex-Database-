use sport_complex;
## Find how many customers are using each status

SELECT 
    s.*, COUNT(*)
FROM
    status s,
    customer c
WHERE
    s.status_name = c.status_name
GROUP BY s.status_name
HAVING s.status_name LIKE 'st%'