SELECT * FROM EMPLOYEES;

-- CREATE Table

CREATE TABLE scrumteam (
                           empId NUMBER PRIMARY KEY,           -- NULL is not allowed and CANNOT be duplicate
                           firstname varchar(30) NOT NULL,     -- CANNOT BE NULL
                           jobtitle varchar(20) NOT NULL,      -- CANNOT BE NULL
                           age INTEGER,                        -- There is no Constraints. Meaning it can be NULL and DUPLICATE
                           salary INTEGER                      -- There is no Constraints. Meaning it can be NULL and DUPLICATE
);
DROP TABLE scrumteam;
SELECT * FROM scrumteam;

-- INSERT
INSERT INTO scrumteam (empId, firstname, jobtitle, age, salary)
VALUES (1,'Tom', 'Tester', 25, 120000);


INSERT INTO scrumteam (firstname, empId, jobtitle, age, salary)
VALUES ('Winnie', 2, 'Pooh', 27, 130000);


-- It is possible to insert data without providing the column names
INSERT INTO scrumteam
VALUES (3,'James', 'Bond', 30, 140000);

INSERT INTO scrumteam
VALUES (4,'Maya', 'SDET', 30, 140000);

INSERT INTO scrumteam
VALUES (5,'Eyad', 'QA Engineer', 30, 140000);

INSERT INTO scrumteam
VALUES (6,'Feyruz', 'QA', 30, 140000);

SELECT * FROM scrumteam;
SELECT FIRSTNAME from scrumteam;

-- How to save
commit;


-- UPDATE
INSERT INTO scrumteam
VALUES (7,'Zahid', 'Developer', 30, 140000);

INSERT INTO scrumteam
VALUES (8,'Ulvi', 'DevOps', 30, 140000);

INSERT INTO scrumteam
VALUES (9,'Ievgeniia', 'SM', 30, 140000);

select  * From scrumteam;


-- Increase their salary by 5000
UPDATE scrumteam
SET salary = salary + 5000;

-- This will not update the DB table. This is just in the VIEW to show us.
SELECT firstname, salary+5000 FROM scrumteam;

select  * From scrumteam;

UPDATE scrumteam
SET salary = salary + 5000
where age = 30;

UPDATE scrumteam
SET salary = salary + 5000
where firstname = 'Ievgeniia';


-- DELETE
DELETE FROM scrumteam
WHERE firstname = 'Feyruz';

select * from scrumteam;

commit;


--ALTER TABLE
--  ADD COLUMN
--  DROP COLUMN
--  RENAME COLUMN existingName TO newName
--  RENAME TO

-- ADD COLUMN
ALTER TABLE scrumteam
    ADD gender varchar(10);

select * FROM scrumteam;

-- UPDATE value in a given column for a given fisrtname
UPDATE scrumteam
SET gender = 'Male'
WHERE firstname = 'Tom';

--Rename Column
ALTER TABLE scrumteam
    RENAME COLUMN salary TO annual_Salary;

SELECT * FROM scrumteam;


-- DROP COLUMN
ALTER TABLE scrumteam
    DROP COLUMN gender;

select * from scrumteam;


-- RENAME TABLE
ALTER TABLE scrumteam
    RENAME TO agileteam;

select * from scrumteam; -- since we changed the name of the table, this will not work
select * from agileteam;


-- What is the different between truncate and drop
-- Truncate  --- >  REMOVES all DATA from table
-- DROP      --- >  REMOVES WHOLE table

TRUNCATE TABLE agileteam;
select * FROM agileteam;

DROP TABLE agileteam;
SELECT * from agileteam;

commit;
