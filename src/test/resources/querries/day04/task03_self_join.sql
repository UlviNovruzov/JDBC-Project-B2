SELECT * FROM EMPLOYEES;

-- Let's say we want to print the employee's full name with their manager's name
-- There's not so many cases when we use Self Join, so do not spend much time on this
SELECT E1.FIRST_NAME, E1.LAST_NAME, E1.EMPLOYEE_ID, E2.FIRST_NAME, E1.MANAGER_ID
FROM EMPLOYEES E1 INNER JOIN EMPLOYEES E2
ON E1.MANAGER_ID = E2.EMPLOYEE_ID;