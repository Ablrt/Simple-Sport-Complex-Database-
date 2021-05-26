## How many Employees hava status vip?
SELECT 
    *
FROM
    customer c
WHERE
    c.status_name = 'vip';

## How many employees have salary greater than 200.000?
SELECT 
    COUNT(*)
FROM
    employee e
WHERE
    e.salary >= 200000;

## How many employees have salary greater than 200.000 and work in GYM
SELECT 
    COUNT(*)
FROM
    employee e
WHERE
    e.salary >= 200000
        AND e.facility_code = 3;

## Get all most frequently atended clubs and sort in descending order
SELECT 
    club_name, COUNT(club_name) AS Frequency
FROM
    customer_section
GROUP BY club_name
ORDER BY Frequency DESC;
   
## Find the number of all facilities that have budget greater than 150000
SELECT 
    COUNT(*)
FROM
    facility f
WHERE
    f.budget > 15000;