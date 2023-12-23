SELECT * FROM EMPLOYEES;

/*
 BETWEEN clause helps to apply a range to filter the result
 */

 -- Get me FNs, Salary, who is making between 7K and 10K

SELECT FIRST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY >= 7000 AND SALARY <= 10000;

SELECT FIRST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY BETWEEN 7000 AND 10000; -- between clause includes values written in the syntax

-- Samples for AND and OR
-- Do I have any relation between salary and email?

SELECT * FROM EMPLOYEES;

-- Get me FN, LN Salary who make salary more than 7K and their department id is 80

SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES
WHERE SALARY > 7000 AND DEPARTMENT_ID = 80;

-- get me all information who is working as "IT_Programmer" or "sa_REP"

SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' OR JOB_ID = 'SA_REP';



