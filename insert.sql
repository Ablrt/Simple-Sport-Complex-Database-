Insert into status (status_name,price,description) values ('vip','200000','use everything');
Insert into status (status_name,price,description) values ('standart','130000','limitied usage');
Insert into status (status_name,price,description) values ('kids','90000','only pool and some clubs');
Insert into status (status_name,price,description) values ('student','110000','same as stadart but for students');

SELECT 
    *
FROM
    status;


Insert into facility (facility_code,name,budget) values (1,'Pool','100000');
Insert into facility (facility_code,name,budget) values (2,'Tennis cort','20000');
Insert into facility (facility_code,name,budget) values (3,'Gym','50000');
Insert into facility (facility_code,name,budget) values (4,'Mirror room','8000');
Insert into facility (facility_code,name,budget) values (5,'Training room','12000');

SELECT 
    *
FROM
    facility;


Insert into status_has_facility (status_name,facility_code) values ('vip',1);
Insert into status_has_facility (status_name,facility_code) values ('vip',2);
Insert into status_has_facility (status_name,facility_code) values ('vip',3);
Insert into status_has_facility (status_name,facility_code) values ('vip',5);
Insert into status_has_facility (status_name,facility_code) values ('standart',1);
Insert into status_has_facility (status_name,facility_code) values ('standart',3);
Insert into status_has_facility (status_name,facility_code) values ('kids',1);
Insert into status_has_facility (status_name,facility_code) values ('student',1);
Insert into status_has_facility (status_name,facility_code) values ('student',3);

SELECT 
    *
FROM
    status_has_facility;


Insert into club (club_name,facility_code,description) values ('Swimming', 1,'swim');
Insert into club (club_name,facility_code,description) values ('Dancing', 4, 'dance');
Insert into club (club_name,facility_code,description) values ('Box', 5, 'fight');
Insert into club (club_name,facility_code,description) values ('Yoga', 4, 'yoga classes');
Insert into club (club_name,facility_code,description) values ('Tennis', 2, 'play tennis');

SELECT 
    *
FROM
    club;


Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (1,3,'Artak','Arzumanyan',150000,'araz@mail.ru');
Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (2,1,'Ani','Taryan',140000,'ata@gmail.com');
Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (3,3,'Karen','Qaryan',180000,'kqo@gmail.com');
Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (4,2,'Meri','Toroyan',120000,'mto@gmail.com');
Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (5,5,'Mark','Baryan',200000,'mba@gmail.com');
Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (6,5,'Edik','Arzumanyan',150000,'eha@gmail.com');
Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (7,1,'Levon','Kostanyan',220000,'lko@gmail.com');
Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (8,3,'Vazgen','Harutyunyan',145000,'vha@gmail.com');
Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (9,4,'Astghik','Nersesyan',150000,'ane@gmail.com');
Insert into employee (ID,facility_code,first_name,last_name,salary,email) values (10,2,'Hovhannes','Tonoyan',185000,'hto@gmail.com');

SELECT 
    *
FROM
    employee;


Insert into employee_phones (phone_number,employee_ID) values (44112233, 1);
Insert into employee_phones (phone_number,employee_ID) values (44223344, 2);
Insert into employee_phones (phone_number,employee_ID) values (44287344, 2);
Insert into employee_phones (phone_number,employee_ID) values (44334455, 3);
Insert into employee_phones (phone_number,employee_ID) values (44445566, 4);
Insert into employee_phones (phone_number,employee_ID) values (44556677, 5);
Insert into employee_phones (phone_number,employee_ID) values (44667788, 6);
Insert into employee_phones (phone_number,employee_ID) values (44967788, 6);
Insert into employee_phones (phone_number,employee_ID) values (44778899, 7);
Insert into employee_phones (phone_number,employee_ID) values (44123123, 8);
Insert into employee_phones (phone_number,employee_ID) values (44147147, 9);
Insert into employee_phones (phone_number,employee_ID) values (44159159, 10);

SELECT 
    *
FROM
    employee_phones;


Insert into trainer (employee_ID,category) values (1,'light weigths');
Insert into trainer (employee_ID,category) values (3,'heavy weigths and box');
Insert into trainer (employee_ID,category) values (9,'women only weigth training ');
Insert into trainer (employee_ID,category) values (2,'swimming');
Insert into trainer (employee_ID,category) values (4,'tennis');

SELECT 
    *
FROM
    trainer;


Insert into section (sec_ID,club_name,trainer_employee_ID1,capacity) values (1,'swimming',2,30);
Insert into section (sec_ID,club_name,trainer_employee_ID1,capacity) values (2,'swimming',2,20);
Insert into section (sec_ID,club_name,trainer_employee_ID1,capacity) values (1,'tennis',4,15);
Insert into section (sec_ID,club_name,trainer_employee_ID1,capacity) values (1,'dancing',1,20);
Insert into section (sec_ID,club_name,trainer_employee_ID1,capacity) values (2,'dancing',1,20);
Insert into section (sec_ID,club_name,trainer_employee_ID1,capacity) values (1,'yoga',9,15);
Insert into section (sec_ID,club_name,trainer_employee_ID1,capacity) values (1,'box',3,10);
Insert into section (sec_ID,club_name,trainer_employee_ID1,capacity) values (2,'box',3,13);

SELECT 
    *
FROM
    Section;



Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (1,'standart','Albert ','Amadanyan','aa@gmail.com', null);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (2,'standart','Hasmik ','Ananyan','ha@gmail.com', null);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (3,'kids','Norayr  ','Khachikyan','nk@gmail.com', null);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (4,'vip','Ani  ','Qochayan','aq@gmail.com', 9);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (5,'student','Robert  ','Movsisyan','rm@gmail.com', null);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (6,'standart','Mariam ','Atanesyan','ma@gmail.com', 9);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (7,'standart','Astghik  ','Abrahamyan','ab@gmail.com', null);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (8,'vip','Morid ','Movsisyan','mm@gmail.com', 1);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (9,'kids','Narek ','Hovhannisyan','nh@gmail.com', null);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (10,'vip','Ashot  ','Hovsepyan','ah@gmail.com',3);
Insert into customer (ID,status_name,first_name,last_name,email,trainer_ID) values (11,'standart','Hovhannes','Tonoyan','hto@gmail.com',null);

SELECT 
    *
FROM
    customer;


Insert into customer_phones (phone_number,customer_ID) values (55223311, 1);
Insert into customer_phones (phone_number,customer_ID) values (55112233, 2);
Insert into customer_phones (phone_number,customer_ID) values (55223344, 3);
Insert into customer_phones (phone_number,customer_ID) values (55334455, 4);
Insert into customer_phones (phone_number,customer_ID) values (55445566, 5);
Insert into customer_phones (phone_number,customer_ID) values (55556677, 6);
Insert into customer_phones (phone_number,customer_ID) values (55667788, 7);
Insert into customer_phones (phone_number,customer_ID) values (55778899, 8);
Insert into customer_phones (phone_number,customer_ID) values (55113322, 9);
Insert into customer_phones (phone_number,customer_ID) values (55116622, 10);
Insert into customer_phones (phone_number,customer_ID) values (44159159, 11);

SELECT 
    *
FROM
    customer_phones;


Insert into customer_section (customer_ID,sec_ID,club_name) values (1,1,'swimming');
Insert into customer_section (customer_ID,sec_ID,club_name) values (4,2,'dancing');
Insert into customer_section (customer_ID,sec_ID,club_name) values (5,2,'swimming');
Insert into customer_section (customer_ID,sec_ID,club_name) values (2,1,'dancing');
Insert into customer_section (customer_ID,sec_ID,club_name) values (3,1,'yoga');
Insert into customer_section (customer_ID,sec_ID,club_name) values (1,1,'box');
Insert into customer_section (customer_ID,sec_ID,club_name) values (3,1,'swimming');
Insert into customer_section (customer_ID,sec_ID,club_name) values (9,2,'box');
Insert into customer_section (customer_ID,sec_ID,club_name) values (8,1,'swimming');
Insert into customer_section (customer_ID,sec_ID,club_name) values (6,1,'tennis');

SELECT 
    *
FROM
    customer_section;