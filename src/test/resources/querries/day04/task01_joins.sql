SELECT * FROM EMPLOYEES;

CREATE TABLE address (
    address_id INTEGER primary key,
    address varchar(50) NOT NULL,
    phone NUMBER NOT NULL
);

INSERT INTO address (address_id, address, phone) VALUES (5, '193 Hello St', 2830334455);
INSERT INTO address (address_id, address, phone) VALUES (7, '692 Bye Road', 2830334456);
INSERT INTO address (address_id, address, phone) VALUES (8, '1556 Tom Way', 2830334457);
INSERT INTO address (address_id, address, phone) VALUES (10, '1795 Jerry St', 2830334458);
INSERT INTO address (address_id, address, phone) VALUES (11, '900 Fairfax Blvd', 2830334459);

SELECT * FROM address;

CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY,
    first_name varchar(30) NOT NULL,
    last_name varchar(40) NOT NULL,
    address_id INTEGER REFERENCES address (address_id)
);

SELECT * FROM customer;

INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (1, 'Marry', 'Smith', 5);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (2, 'Patricia', 'Johnson', NULL);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (3, 'Linda', 'Jones', 7);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (4, 'Barbara', 'Jones', 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (5, 'Elizabeth', 'Brown', NULL);

SELECT * FROM customer;

commit;

/*
 INNER JOIN
 getting information only on the matching ones
 it eliminates if there's no matching
 if you don't write INNER, and just write JOIN, it will act as an INNER JOIN by default
 */

 SELECT first_name, last_name, address, phone
 FROM customer INNER JOIN address ON customer.address_id = address.address_id;

commit;

-- This will give an issue because the query does not know from WHICH table it needs to get the address_id column since both have it.
SELECT first_name, last_name, address, phone, address_id
FROM CUSTOMER INNER JOIN ADDRESS ON CUSTOMER.address_id = ADDRESS.address_id;

-- The solution is, we can call that column with the table name.  -- > USTOMER.address_id
SELECT first_name, last_name, address, phone, CUSTOMER.address_id
FROM CUSTOMER INNER JOIN ADDRESS ON CUSTOMER.address_id = ADDRESS.address_id;

-- The solution is, we can call that column with the table name.  -- > ADDRESS.address_id
SELECT first_name, last_name, address, phone, ADDRESS.address_id
FROM CUSTOMER INNER JOIN ADDRESS ON CUSTOMER.address_id = ADDRESS.address_id;

-- YOu can get that column form both table since both have it -- > ADDRESS.address_id, CUSTOMER.address_id
SELECT first_name, last_name, address, phone, ADDRESS.address_id, CUSTOMER.address_id
FROM CUSTOMER INNER JOIN ADDRESS ON CUSTOMER.address_id = ADDRESS.address_id;

/*
 LEFT OUTER JOIN
 Matching part + only the unique parts for the left table
 */

 SELECT first_name, last_name, address, phone from customer LEFT OUTER JOIN address on customer.address_id = address.address_id;

/*
 LEFT OUTER JOIN with WHERE
 We can find the data from left table which nas NO VALUES in right table by doing WHERE condition IS NULL
 */

SELECT first_name, last_name, address, phone from customer
left outer join address
on customer.address_id = address.address_id
where customer.address_id is null; -- you can put address.address_id, it will still work

SELECT first_name, last_name, address, phone from customer
left outer join address
on customer.address_id = address.address_id
where customer.address_id is NOT null; -- the same result as INNER JOIN

-- you can use short name of tables as part of ON statement
SELECT first_name, last_name, address, phone from customer c
left outer join address a
on c.address_id = a.address_id
where c.address_id is NOT null;

/*
 RIGHT OUTER JOIN
 Matching part + only the unique parts for the right table

 NOTE: LEFT OUTER JOIN ===>>> LEFT JOIN
 */

SELECT first_name, last_name, address, phone from customer c
RIGHT OUTER JOIN address a
ON c.address_id = a.address_id;

SELECT first_name, last_name, address, phone from address a
LEFT OUTER JOIN customer c
ON c.address_id = a.address_id; -- the same result as previous one, we just switched table names and right to left

/*
 RIGHT OUTER JOIN with WHERE

 We can find the data from right table which nas NO VALUES in left table by doing WHERE condition IS NULL
 */

SELECT first_name, last_name, address, phone
FROM customer c RIGHT OUTER JOIN address a
ON c.address_id = a.address_id
WHERE c.first_name IS NULL;

/*
 FULL OUTER JOIN
 shows both tables joined together with all matching and mismatching values
 */

SELECT first_name, last_name, address, phone FROM customer c
FULL OUTER JOIN address a ON c.address_id = a.address_id;

/*
 FULL OUTER JOIN with WHERE
 */

SELECT first_name, last_name, address, phone, c.address_id, a.address_id
FROM CUSTOMER c FULL OUTER JOIN ADDRESS a
                                ON c.address_id = a.address_id
WHERE c.address_id IS NOT NULL;


SELECT first_name, last_name, address, phone, c.address_id, a.address_id
FROM CUSTOMER c FULL OUTER JOIN ADDRESS a
                                ON c.address_id = a.address_id
WHERE a.address_id IS NOT NULL;

SELECT first_name, last_name, address, phone, c.address_id, a.address_id
FROM CUSTOMER c FULL OUTER JOIN ADDRESS a
ON c.address_id = a.address_id;


-- IQ
SELECT first_name, last_name, address, phone, c.address_id, a.address_id
FROM CUSTOMER c FULL OUTER JOIN ADDRESS a
                                ON c.address_id = a.address_id
WHERE last_name LIKE 'S%';


SELECT first_name, last_name, address, phone, c.address_id, a.address_id
FROM CUSTOMER c FULL OUTER JOIN ADDRESS a
                                ON c.address_id = a.address_id
WHERE a.address_id IS NULL OR c.address_id IS NULL;