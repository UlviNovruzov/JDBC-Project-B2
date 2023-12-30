SELECT * FROM EMPLOYEES;

-- Display all information from employees who is making highest salary in company

SELECT MAX(SALARY) FROM EMPLOYEES;

SELECT * FROM EMPLOYEES
WHERE SALARY = 24000; -- now we will make it dynamic in the next syntax

SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES); -- now it's dynamic

-- Display me the 2nd highest salary
SELECT SALARY FROM EMPLOYEES
ORDER BY SALARY DESC;

SELECT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES);

-- Get me all information who is making the 2nd highest salary
SELECT * FROM EMPLOYEES
WHERE SALARY = 17000; -- hardcoded

SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES
                WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES)); -- dynamic

-- Display all the employees who is making above the average
SELECT * FROM EMPLOYEES
WHERE SALARY > 6462; -- hardcoded

SELECT * FROM EMPLOYEES
WHERE SALARY > (SELECT ROUND (AVG(SALARY)) FROM EMPLOYEES); -- dynamic

