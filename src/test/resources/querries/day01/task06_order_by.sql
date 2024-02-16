SELECT * FROM EMPLOYEES;

SELECT COUNT(DEPARTMENT_ID) FROM EMPLOYEES
where DEPARTMENT_ID = 80;

/*
 ORDER BY allows us to sort the data based on the provided column name
 it can be sorted ascending or descending order
 */

 -- display all infomation based on who is making more salary to lower salary

SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;

SELECT * FROM EMPLOYEES
WHERE COMMISSION_PCT is not null -- we can use multiple filters in one condition
ORDER BY SALARY ASC; -- even if you do not provide ASC, by default it will use ascending order

-- it is also possible to sort based on index number as well
-- in DB, column index no's start from 1

SELECT * FROM EMPLOYEES
ORDER BY 8; -- 8 is column number // sorts according to salary in ascending order

SELECT * FROM EMPLOYEES
ORDER BY 3; -- 3 is column number // sorts according to last names in ascending order


-- get email and sort them in asc order by salary

SELECT EMAIL, SALARY FROM EMPLOYEES
ORDER BY 2 DESC; -- column number is chosen among selected columns

-- display all info from employees where employee_id < 10, sort them based on their first_name

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID < 110
ORDER BY FIRST_NAME ASC; -- instead of FIRST_NAME we can put index no. 2, the result will be same

-- display all info from employees based on firstNAME ASC

SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME ASC, LAST_NAME DESC; -- at duplicated first names it gets last names in descending order

-- display all info based on who is making high salary to low

SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC;

