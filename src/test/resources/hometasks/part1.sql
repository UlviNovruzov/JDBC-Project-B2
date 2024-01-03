sELecT * frOM employEEs;

-- 1. List all the employees first and last name with their salary in employees table
SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES;

-- 2. How many employees have salary less than 5000?
SELECT Count (*) from Employees
WHERE salary < 5000;

-- 3. How many employees have salary between 6000 and 7000?
SELECT Count (*) from Employees
WHERE salary BETWEEN 6000 AND 7000;

-- 4. List all the different region_ids in countries table
SELECT DISTINCT REGION_ID FROM COUNTRIES;

-- 5. display the salary of the employee Grant Douglas (lastName: Grant,  firstName: Douglas)
SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES
WHERE FIRST_NAME = 'Douglas' AND LAST_NAME = 'Grant';

-- 6. display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
SELECT * FROM DEPARTMENTS
WHERE DEPARTMENT_NAME IN ('IT', 'Public Relations', 'Sales', 'Executive');

-- 7. display the maximum salary in employees table
SELECT MAX(SALARY) FROM EMPLOYEES;

-- 8. display the the minimum salary in employees table
SELECT MIN(SALARY) FROM EMPLOYEES;

-- 9. display the average salary of the employees;
SELECT ROUND (AVG(SALARY), 0) FROM EMPLOYEES;

-- 10. count the total numbers of the departments in departs table
SELECT Count (*) FROM DEPARTMENTS;

-- 11. sort the start_date in ascending order in job_history's table
SELECT START_DATE FROM JOB_HISTory
ORDER BY START_DATE;

-- 12. sort the start_date in descending order in job_history's table
SELECT START_DATE FROM JOB_HISTory
ORDER BY START_DATE DESC;

-- 13. display all records whose last name contains 2 lowercase 'a's
SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE '%a%a%';

-- 14. display all the employees whose first name starts with 'A'
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%';

-- 15. display all the employees whose job_ID contains 'IT'
SELECT FIRST_NAME, LAST_NAME, JOB_ID FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

-- 16. display all  unique job_id that end with CLERK in employee table
SELECT DISTINCT JOB_ID FROM EMPLOYEES
WHERE JOB_ID LIKE '%CLERK';

-- 17.display all  employees first name starts with A and have exactly 4 characters Total
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A___';

-- 18. display all the employees whose department id in 50, 80, 100
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (50, 80, 100)
ORDER BY DEPARTMENT_ID;

-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID NOT IN (90, 60, 100, 130, 120)
ORDER BY DEPARTMENT_ID;

-- 20. divide employees into groups by using their job id
SELECT JOB_ID, Count (*) FROM EMPLOYEES
GROUP BY JOB_ID;

-- 1 display the maximum salaries in each groups
SELECT JOB_ID, Max(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;

-- 2 display the minimum salaries in each groups
SELECT JOB_ID, Min(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;

-- 3 display the average salary of each group
SELECT JOB_ID, Avg(SALARY) FROM EMPLOYEES
GROUP BY JOB_ID;

-- 4 how many employees are there in each group that have minimum salary of 5000?
SELECT JOB_ID, Min(SALARY), Count(*) FROM EMPLOYEES
GROUP BY JOB_ID
HAVING Min(SALARY) < 5000;

-- 5 display the total budgets of each groups
SELECT JOB_ID, Sum(Salary), Count (*) FROM EMPLOYEES
GROUP BY JOB_ID;

-- 21. display all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
SELECT JOB_ID, Avg(SAlary) FROM EMPLOYEES
GROUP BY JOB_ID
HAVING JOB_ID IN ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');

-- 22.display max salary  for each department
SELECT DEPARTMENT_ID, MAX(SALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING DEPARTMENT_ID IS NOT NULL;

-- 23. display total salary for each department except department_id 50, and where total salary >30000
SELECT DEPARTMENT_ID, SUM(SALARY) FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING DEPARTMENT_ID != 50 AND SUM (SALARY) > 30000;

commit;