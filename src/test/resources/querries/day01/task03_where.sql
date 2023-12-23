SELECT * FROM EMPLOYEES;


/*
 WHERE clause appears after FROM clause of the SELECT statement
 it applies a filter on the rows that was returned by the query
 */

 -- get me firstNAME, lastNAME and salary where firstNAME is David

SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE FIRST_NAME = 'David';

-- get me firstNAME, lastNAME and salary where firstNAME is David and lastNAME is Lee

SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES
WHERE FIRST_NAME = 'David'
AND
LAST_NAME = 'Lee';

-- get me all information who is making salary more than 6K

SELECT * FROM EMPLOYEES
WHERE SALARY > 6000;

-- get me all information who is making equal or less than 6K

SELECT * FROM EMPLOYEES
WHERE SALARY <= 6000;

-- get me email address who is making salary equal or less than 6K
SELECT EMAIL FROM EMPLOYEES
WHERE SALARY <= 6000;





