SELECT * FROM EMPLOYEES;

/*
 DISTINCT
 removes duplicates from your request
 */

 -- display address and postal code from locations

SELECT STREET_ADDRESS, POSTAL_CODE FROM LOCATIONS;

-- get me a unique firstName from Employees

SELECT FIRST_NAME FROM EMPLOYEES; -- 107 results with duplicates
SELECT DISTINCT FIRST_NAME FROM EMPLOYEES; -- 92 results without duplicates

SELECT JOB_ID FROM EMPLOYEES; -- 107 results
SELECT DISTINCT JOB_ID FROM EMPLOYEES; -- 19 results

SELECT COUNTRY_ID from LOCATIONS; -- 23 results
SELECT DISTINCT COUNTRY_ID from LOCATIONS; -- 14 results

SELECT * FROM EMPLOYEES
