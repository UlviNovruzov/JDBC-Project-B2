SELECT * FROM EMPLOYEES;

/*
    HAVING
 */

-- Display job_ids where the average salary is MORE THAN 5_000
-- First it finds all the JOB_ID whose SALARY MORE than 5_000
-- THEN GROUP THEM BY Job_Id
SELECT JOB_ID FROM EMPLOYEES
WHERE SALARY > 5000
group by JOB_ID;


-- Here, we are putting all data in group after that we find avg salary for each group
-- It works like this: If any average salary is over 5_000 it will display
-- It works after GROUPing them
SELECT JOB_ID, AVG (SALARY)FROM EMPLOYEES
GROUP BY JOB_ID
HAVING avg(SALARY) > 5000;

SELECT JOB_ID, SALARY FROM EMPLOYEES;

/*
    Difference between "WHERE" and "HAVING" with "Group BY"

        WHERE ---- > It filters to result BEFORE put them into group
        HAVING -- > It filters to result AFTER put them into group
 */


-- Display department_id where employees count is more that 5
SELECT  DEPARTMENT_ID, COUNT (*)  from EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 5;


-- Display duplicate names in employees --- > Interview Questions
SELECT FIRST_NAME, count(*) as "TOTAL COUNT" from EMPLOYEES
GROUP BY FIRST_NAME
HAVING count(*) > 1;

-- ALIASES --- > to name the column AS you wanted in your VIEW