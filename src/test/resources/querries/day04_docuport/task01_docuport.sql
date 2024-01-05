SELECT * FROM DOCUMENT.users
WHERE first_name = 'Ramiz';


SELECT * FROM DOCUMENT.users
WHERE email_address = 'Aksdjkdj@gmail.com';


SELECT * FROM DOCUMENT.users
WHERE supervisor_user_id IS NOT NULL;

SELECT * FROM DOCUMENT.users
WHERE users.department_id IS NOT NULL;