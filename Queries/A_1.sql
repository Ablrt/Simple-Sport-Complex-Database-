## Find the section with the most members 

SELECT 
    s.*, MAX(c) AS 'number of members'
FROM
    section s,
    (SELECT 
        sec_ID, club_name, COUNT(*) c
    FROM
        customer_section
    GROUP BY sec_ID , club_name) AS t
WHERE
    s.sec_ID = t.sec_ID
        AND s.club_name = t.club_name