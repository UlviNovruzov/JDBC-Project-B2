SELECT * FROM EMPLOYEES;

/*
 IN clause
 it's kind of or logic
 */

SELECT * FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'SA_REP', 'ST_MAN', 'MK_REP');

-- DISPLAY CITY WHERE COUNTRY_ID IS ITALY US UK

SELECT CITY FROM LOCATIONS
WHERE COUNTRY_ID IN ('IT', 'US', 'UK');

-- DISPLAY POSTAL CODE, CITY WHERE COUNTRY ID IS NOT ITALY OR US
SELECT POSTAL_CODE, CITY, COUNTRY_ID FROM LOCATIONS
WHERE COUNTRY_ID NOT IN ('IT', 'US');

-- DISPLAY ALL INFO WHERE EMP ID IS 134, 123, 145, 146

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (123, 134, 145, 146);

-- DISPLAY ALL INFO FOR EMPLOYEES WHOSE DEP ID IS NULL (empty or not available)
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;

-- display all info for employees whose dept id is not null

SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL;