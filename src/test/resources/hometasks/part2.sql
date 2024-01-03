SELECT * FROM EMPLOYEES;

-- 1. display full addresses from locations table in a single column
SELECT * FROM LOCATIONS;
SELECT STREET_ADDRESS || ', ' || CITY || ',' || POSTAL_CODE FULL_ADDRESS FROM LOCATIONS;

-- 2. display all information of the employee who has the minimum salary in employees table
SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);

-- 3. display the second minimum salary from the employees
SELECT MIN(SALARY) FROM (SELECT * FROM EMPLOYEES
                         WHERE SALARY > (SELECT MIN(SALARY) FROM EMPLOYEES));

-- 4. display the second minimum salary from the employees
SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY) FROM (SELECT * FROM EMPLOYEES
                                         WHERE SALARY > (SELECT MIN(SALARY) FROM EMPLOYEES)));

-- 5. list all the employees who are making above the average salary;
SELECT * FROM EMPLOYEES
WHERE SALARY > (SELECT ROUND (AVG(SALARY), 0) FROM EMPLOYEES);

-- 6. list all the employees who are making less than the average salary
SELECT * FROM EMPLOYEES
WHERE SALARY < (SELECT ROUND (AVG(SALARY), 0) FROM EMPLOYEES);

-- 7. display manager name of 'Neena'
SELECT FIRST_NAME, MANAger_ID FROM EMPLOYEES
WHERE FIRST_NAME = 'Neena';

-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
SELECT MIN (SALARY) FROM (SELECT SALARY FROM (SELECT DISTINCT SALARy FROM EMPLOYEES
                                              ORDER BY SALARY DESC)
                          WHERE rownum < 4);

-- 9. find the 5th maximum salary from the employees table (do not include duplicates)
SELECT MIN (SALARY) FROM (SELECT SALARY FROM (SELECT DISTINCT SALARy FROM EMPLOYEES
                                              ORDER BY SALARY DESC)
                          WHERE rownum < 6);

-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
SELECT MIN (SALARY) FROM (SELECT SALARY FROM (SELECT DISTINCT SALARy FROM EMPLOYEES
                                              ORDER BY SALARY DESC)
                          WHERE rownum < 8);

-- 11. find the 10th maximum salary from the employees table (do not include duplicates)
SELECT MIN (SALARY) FROM (SELECT SALARY FROM (SELECT DISTINCT SALARy FROM EMPLOYEES
                                              ORDER BY SALARY DESC)
                          WHERE rownum < 11);

-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)
SELECT MAX (SALARY) FROM (SELECT SALARY FROM (SELECT DISTINCT SALARy FROM EMPLOYEES
                                              ORDER BY SALARY)
                          WHERE rownum < 4);

-- 13. find the 5th minimum salary from the employees table (do not include duplicates)
SELECT MAX (SALARY) FROM (SELECT SALARY FROM (SELECT DISTINCT SALARy FROM EMPLOYEES
                                              ORDER BY SALARY)
                          WHERE rownum < 6);

-- 14. find the 7th minimum salary from the employees table (do not include duplicates)
SELECT MAX (SALARY) FROM (SELECT SALARY FROM (SELECT DISTINCT SALARy FROM EMPLOYEES
                                              ORDER BY SALARY)
                          WHERE rownum < 8);

-- 15. find the 10th minimum salary from the employees table (do not include duplicates)
SELECT MAX (SALARY) FROM (SELECT SALARY FROM (SELECT DISTINCT SALARy FROM EMPLOYEES
                                              ORDER BY SALARY)
                          WHERE rownum < 11);

