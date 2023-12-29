SELECT * FROM EMPLOYEES;

SELECT DISTINCT JOB_ID FROM EMPLOYEES;

-- Display average salary for 'IT_PROG' --- > Interview question
SELECT * FROM EMPLOYEES
where JOB_ID = 'IT_PROG';

SELECT SALARY FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

SELECT AVG (SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

SELECT MAX (SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

SELECT MIN (SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

-- Display average salary for 'SA_REP' --- > Interview question
SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'SA_REP';

SELECT AVG (SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'SA_REP';

------------------------------------------------------------------------------------------------
--NOTE: whenever you see that in the question it says EACH -- >  you need you use GROUP BY

SELECT DISTINCT JOB_ID FROM EMPLOYEES;
--OR
SELECT JOB_ID from EMPLOYEES
GROUP BY JOB_ID;

SELECT JOB_ID, AVG (SALARY), MAX(SALARY), MIN(SALARY), COUNT (*)from EMPLOYEES
GROUP BY JOB_ID;

-- Display sum of salary of each department
SELECT DEPARTMENT_ID, SALARY from EMPLOYEES;
SELECT DEPARTMENT_ID, ROUND (AVG(SALARY), 2) from EMPLOYEES
GROUP BY DEPARTMENT_ID;

-- Display, avg, max, min, sum of salary and count of each department_id
SELECT DEPARTMENT_ID, ROUND (AVG(SALARY), 2), MAX (SALARY), MIN (SALARY), SUM(SALARY), COUNT (*) from EMPLOYEES
GROUP BY  DEPARTMENT_ID;
