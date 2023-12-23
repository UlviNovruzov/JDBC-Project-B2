sELecT * frOM employEEs;

SELECT FIrsT_NAMe, LAST_NAME from EMPLOYEES;

-- SINGLE LINE COMMENT
/*
    Multi Line Comment
 */


-- get me firstname from employees
SELECT FIRST_NAME from EMPLOYEES;

-- get me firstname and Salary from employees
SELECT FIRST_NAME, SALARY from EMPLOYEES;


-- get me firstname, lastname and Salary from employees
SELECT FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;


-- display all information from employees table.
SELECT * FROM EMPLOYEES;


-- display all information from departments table.
SELECT * FROM DEPARTMENTS;

-- display all information from locations table.
SELECT * FROM LOCATIONS;

-- display all information from countries table.
SELECT * FROM COUNTRIES;

-- display all information from jobs table.
SELECT * FROM jobs;

-- Display street address and postal code from locations
SELECT STREET_ADDRESS, POSTAL_CODE from LOCATIONS;

--Display department names from department table
SELECT DEPARTMENT_NAME FROM DEPARTMENTS;

--Display region name from regions table
SELECT REGION_NAME FROM REGIONS;

SELECT  FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES, DEPARTMENTS;