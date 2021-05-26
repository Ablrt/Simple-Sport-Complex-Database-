## Get all custmores that have trainers and their trainer's info 

SELECT 
    c.ID, c.first_name, c.last_name, t.*
FROM
    customer c
        JOIN
    trainer t ON c.trainer_ID = t.employee_ID
ORDER BY c.ID