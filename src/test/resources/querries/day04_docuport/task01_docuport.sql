SELECT * FROM DOCUMENT.users
WHERE first_name = 'Ramiz';


SELECT * FROM DOCUMENT.users
WHERE email_address = 'Aksdjkdj@gmail.com';


SELECT * FROM DOCUMENT.users
WHERE supervisor_user_id IS NOT NULL;

SELECT * FROM DOCUMENT.users
WHERE users.department_id IS NOT NULL;

-- Get me all info for users where the role name is advisor
SELECT * FROM document.users
WHERE role_name = 'advisor';

SELECT * FROM identity.departments;

SELECT COUNT (*) FROM document.users;